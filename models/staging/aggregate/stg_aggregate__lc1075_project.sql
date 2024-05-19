with
    source as (select * from {{ source('leetcode_db_aggregate', 'lc1075_Project') }}),
    renamed as (
        select
            project_id,
            employee_id
        from source
    )

select * from renamed
