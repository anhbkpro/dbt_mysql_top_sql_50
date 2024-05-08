with
    source as (
        select * from {{ source('leetcode_db_basic_join', 'Product') }}
    ),
    renamed as (
        select
            -- ids
            product_id,

            -- strings
            product_name
        from source
    )

select * from renamed
