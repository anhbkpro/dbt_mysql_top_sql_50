with
    employee as ( select * from {{ ref('stg_aggregate__lc1075_employee') }}),
    project as ( select * from {{ ref('stg_aggregate__lc1075_project') }}),
    avg_experience_years as (
        select
            p.project_id,
            ROUND(AVG(e.experience_years), 2) as average_years
        from
            project p
            join employee e on p.employee_id = e.employee_id
        group by p.project_id
    )

select * from avg_experience_years
