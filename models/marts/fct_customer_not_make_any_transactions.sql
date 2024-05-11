with
    visits as (
        select * from {{ ref('stg_basic_join__visits') }}
    ),
    transactions as (
        select * from {{ ref('stg_basic_join__transactions') }}
    ),
    -- find the IDs of the users who visited without making any transactions
    -- and the number of times they made these types of visits.
    customer_who_visited_but_did_not_make_any_transactions as (
        select
            customer_id,
            count(visit_id) as count_no_trans
        from
            visits
        where
            visit_id not in (select visit_id from transactions)
        group by
            customer_id
    )

select * from customer_who_visited_but_did_not_make_any_transactions
