with
    source as (
        select * from {{ source('leetcode_db_basic_join', 'EmployeeUNI') }}
    ),
    renamed as (
        select
            -- ids
            id as employee_id,
            unique_id as unique_id
        from source
    )

select * from renamed
