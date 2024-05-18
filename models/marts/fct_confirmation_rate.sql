with
    signups as (select * from {{ ref('stg_basic_join__signups') }}),
    confirmations as (select * from {{ ref('stg_basic_join__confirmations') }}),
    result as (
        select
            s.user_id,
            ROUND(AVG(IF(c.action='confirmed', 1, 0)), 2) as confirmation_rate
        from
            signups s
            left join confirmations c on s.user_id = c.user_id
        group by s.user_id
    )

select * from result
