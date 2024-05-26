with
    source as (select * from {{ source('leetcode_db_aggregate', 'Queries') }}),
    renamed as (
        select
            query_name,
            result,
            position,
            rating
        from source
    )

select * from renamed
