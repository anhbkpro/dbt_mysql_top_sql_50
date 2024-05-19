with
    cinema as (select * from {{ ref('stg_aggregate__cinema') }}),
    not_boring as (
        select
            id,
            movie,
            description,
            rating
        from cinema
        where
            mod(id, 2) = 1
            and description != 'boring'
        order by rating desc
    )

select * from not_boring
