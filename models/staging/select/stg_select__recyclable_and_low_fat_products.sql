with
    source as (
        select
            *
        from
            {{ source('leetcode_db', 'recyclable_and_low_fat_products') }}
    ),
    renamed as (
        select
            -- ids
            product_id as id,

            -- strings
            low_fats as low_fat,
            recyclable as recyclable

            -- numerics

            -- booleans

            -- dates

            -- timestamps
        from
            source
    )

select * from renamed
