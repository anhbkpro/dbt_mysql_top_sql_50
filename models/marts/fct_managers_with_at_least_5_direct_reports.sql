with
    employee as ( select * from {{ ref('stg_basic_join__lc570_employee') }}),
    at_least_5_direct_reports as (
        select
            manager_id
        from employee
        group by manager_id
        having count(*) >= 5
    ),
    result as (
        select
            e.employee_name as name
        from
            employee e
            join at_least_5_direct_reports a on e.employee_id = a.manager_id
    )

select * from result
