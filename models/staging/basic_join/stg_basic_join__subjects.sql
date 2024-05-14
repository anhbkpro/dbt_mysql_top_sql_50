with
    source as (
        select * from {{ source('leetcode_db_basic_join', 'Subjects') }}
    ),
    renamed as (
        select
            -- strings
            subject_name
        from source
    )

select * from renamed
