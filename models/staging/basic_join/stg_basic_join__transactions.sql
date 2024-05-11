with
    source as (
        select * from {{ source('leetcode_db_basic_join', 'Transactions') }}
    ),
    renamed as (
        select
            -- ids
            transaction_id,
            visit_id,
            amount
        from source
    )

select * from renamed
