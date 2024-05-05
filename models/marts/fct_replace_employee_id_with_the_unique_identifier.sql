with
    employees as (
        select * from {{ ref('stg_basic_join__employees') }}
    ),
    employeeUNI as (
        select * from {{ ref('stg_basic_join__employeeUNI') }}
    ),
    -- show the unique ID of each user, If a user does not have a unique ID replace just show null.
    result as (
        select
            employeeUNI.unique_id as unique_id,
            employees.name as name
        from employees
        left join employeeUNI
        on employees.employee_id = employeeUNI.employee_id
    )

select * from result
