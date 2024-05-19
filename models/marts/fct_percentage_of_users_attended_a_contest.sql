with
    register as (select * from {{ ref('stg_aggregate__register') }}),
    users as (select * from {{ ref('stg_aggregate__users') }}),
    registered_percentage as (
        select
            r.contest_id,
            round(count(r.user_id) * 100.0 / (select count(*) from users), 2) as percentage
        from
            register r
            join users u on r.user_id = u.user_id
        group by
            r.contest_id
        order by percentage desc, r.contest_id
    )

select * from registered_percentage
