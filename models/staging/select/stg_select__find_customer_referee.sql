with
    source as (
        select
            *
        from
            {{ source('leetcode_db_select', 'customers__find_customer_referee') }}
    ),
    renamed as (
        select
            -- ids
            id,
            referee_id as referee_id,

            -- strings
            name as name

            -- numerics

            -- booleans

            -- dates

            -- timestamps
        from
            source
    )

select * from renamed
