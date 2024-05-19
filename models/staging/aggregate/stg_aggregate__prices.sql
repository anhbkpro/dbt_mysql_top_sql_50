with
    source as (select * from {{ source('leetcode_db_aggregate', 'Prices') }}),
    renamed as (
        select
            product_id,
            start_date,
            end_date,
            price
        from source
    )

select * from renamed
