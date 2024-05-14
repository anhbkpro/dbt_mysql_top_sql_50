with
    source as (
        select * from {{ source('leetcode_db_basic_join', 'Examinations') }}
    ),
    renamed as (
        select
            -- ids
            student_id,

            -- strings
            subject_name
        from source
    )

select * from renamed
