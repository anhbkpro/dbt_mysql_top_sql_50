with
    source as (
        select * from {{ source('leetcode_db_basic_join', 'Bonus') }}
    ),
    renamed as (
        select
            -- ids
            empId as employee_id,

            -- numbers
            bonus
        from source
    )

select * from renamed
