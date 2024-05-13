with
    source as (
        select * from {{ source('leetcode_db_basic_join', 'Employee') }}
    ),
    renamed as (
        select
            -- ids
            empId as employee_id,

            -- strings
            name,

            -- numbers
            supervisor,
            salary
        from source
    )

select * from renamed
