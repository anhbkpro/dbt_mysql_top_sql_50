with
    source as ( select * from {{ source('leetcode_db_basic_join', 'Confirmations') }}),
    renamed as (
        select
            -- ids
            user_id,

            -- timestamps
            time_stamp,

            -- strings
            action
        from source
    )

select * from renamed
