with
    queries as (select * from {{ ref('stg_aggregate__queries') }}),
    quality_and_percentage as (
        select
            q.query_name,
            round(sum((rating*1.0)/position)/count(result),2) as quality,
            round((sum(case when rating < 3 then 1 else 0 end) * 100.0)/count(result), 2) as poor_query_percentage
        from
            queries q
        group by
            q.query_name
    )

select * from quality_and_percentage
