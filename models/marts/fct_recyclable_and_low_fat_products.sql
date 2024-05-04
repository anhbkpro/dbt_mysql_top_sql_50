with
    products as (
        select * from {{ref('stg_select__recyclable_and_low_fat_products')}}
    ),
    low_fat_recyclable_products as (
        select id
        from products
        where low_fat = 'Y' and recyclable = 'Y'
    ),
    renamed as (
        select
            id as product_id
        from
            low_fat_recyclable_products
    )

select * from renamed
