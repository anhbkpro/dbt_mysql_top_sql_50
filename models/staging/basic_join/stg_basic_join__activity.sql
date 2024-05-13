with
    source as (
        select * from {{ source('leetcode_db_basic_join', 'Activity') }}
    ),
    renamed as (
        select
            -- ids
            machine_id,
            process_id,

            -- strings
            activity_type,

            -- numbers
            timestamp
        from source
    )

select * from renamed
