with
    source as (select * from {{ source('leetcode_db_aggregate', 'UnitsSold') }}),
    renamed as (
        select
            product_id,
            purchase_date,
            units
        from source
    )

select * from renamed
