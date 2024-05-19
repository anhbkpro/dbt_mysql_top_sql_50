with
    source as (select * from {{ source('leetcode_db_aggregate', 'Register') }}),
    renamed as (
        select
            contest_id,
            user_id
        from source
    )

select * from renamed
