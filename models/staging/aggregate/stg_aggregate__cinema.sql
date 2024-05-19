with
    source as (select * from {{ source('leetcode_db_aggregate', 'cinema') }}),
    renamed as (
        select
            id,
            movie,
            description,
            rating
        from source
    )

select * from renamed
