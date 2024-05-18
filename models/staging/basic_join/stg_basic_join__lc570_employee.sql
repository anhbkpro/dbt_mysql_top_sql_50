with
    source as ( select * from {{ source('leetcode_db_basic_join', 'lc570_Employee') }}),
    renamed as (
        select
            id as employee_id,
            name as employee_name,
            department,
            managerId as manager_id
        from source
    )
select * from renamed
