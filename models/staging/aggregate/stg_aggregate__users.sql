with
    source as (select * from {{ source('leetcode_db_aggregate', 'Users') }}),
    renamed as (
        select
            user_id,
            user_name
        from source
    )

select * from renamed
