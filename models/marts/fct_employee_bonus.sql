with
    employees as (
        select * from {{ ref('stg_basic_join__employee_bonus__employee') }}
    ),
    bonus as (
        select * from {{ ref('stg_basic_join__employee_bonus__bonus') }}
    ),
    result as (
        select
            employees.name,
            bonus.bonus
        from employees
        left join bonus
        on employees.employee_id = bonus.employee_id
        where bonus.bonus is null or bonus.bonus < 1000
    )

select * from result
