with
    source as (
        select * from {{ source('leetcode_db_basic_join', 'Sales') }}
    ),
    renamed as (
        select
            -- ids
            sale_id,
            product_id,

            -- numeric
            year,
            quantity,
            price
        from source
    )

select * from renamed
