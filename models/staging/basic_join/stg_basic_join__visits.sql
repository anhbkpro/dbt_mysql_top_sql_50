with
    source as (
        select * from {{ source('leetcode_db_basic_join', 'Visits') }}
    ),
    renamed as (
        select
            -- ids
            visit_id,
            customer_id
        from source
    )

select * from renamed
