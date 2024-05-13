with
    source as (
        select * from {{ source('leetcode_db_basic_join', 'Weather') }}
    ),
    renamed as (
        select
            -- ids
            id as weather_id,

            -- dates
            recordDate,

            -- numbers
            temperature
        from source
    )

select * from renamed
