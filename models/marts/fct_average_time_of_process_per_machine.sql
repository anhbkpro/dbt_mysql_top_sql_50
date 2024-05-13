with
    activity as (
        select * from {{ ref('stg_basic_join__activity') }}
    ),
    average_time as (
        select
            machine_id,
            ROUND(SUM(CASE WHEN activity_type = 'end' THEN timestamp ELSE -timestamp END) / COUNT(distinct process_id), 3) as processing_time
        from
            activity
        group by
            machine_id
    )

select * from average_time
