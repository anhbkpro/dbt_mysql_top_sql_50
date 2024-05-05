with
    source as (
        select * from {{ source('leetcode_db_basic_join', 'Employees') }}
    ),
    renamed as (
        select
            -- ids
            id as employee_id,

            -- strings
            name as name
        from source
    )

select * from renamed
