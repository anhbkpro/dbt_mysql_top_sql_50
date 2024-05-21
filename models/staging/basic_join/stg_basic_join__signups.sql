with
    source as ( select * from {{ source('leetcode_db_basic_join', 'Signups') }}),
    renamed as (
        select
            -- ids
            user_id,

            -- timestamps
            time_stamp
        from source
    )

-- Each row contains information about the signup time for the user with ID user_id.
select * from renamed
