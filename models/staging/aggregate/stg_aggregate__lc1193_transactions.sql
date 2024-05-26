with
    source as (select * from {{ source('leetcode_db_aggregate', 'lc1193_Transactions') }}),
    renamed as (
        select
            id,
            country,
            state,
            amount,
            trans_date
        from source
    )

select * from renamed
