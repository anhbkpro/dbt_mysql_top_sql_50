with
    source as (
        select * from {{ source('leetcode_db_basic_join', 'Students') }}
    ),
    renamed as (
        select
            -- ids
            student_id,

            -- strings
            student_name
        from source
    )

select * from renamed
