with
    source as (select * from {{ source('leetcode_db_aggregate', 'lc1075_Employee') }}),
    renamed as (
        select
            employee_id,
            name,
            experience_years
        from source
    )

select * from renamed
