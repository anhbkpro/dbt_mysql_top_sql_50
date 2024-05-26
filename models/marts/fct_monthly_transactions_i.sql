with
    transactions as (select * from {{ ref('stg_aggregate__lc1193_transactions') }}),
    monthly_transactions as (
        select
            date_format(trans_date, '%Y-%m') as month,
            country,
            count(id) as trans_count,
            count(case when state = 'approved' then 1 end) as approved_count,
            sum(amount) as trans_total_amount,
            sum(case when state = 'approved' then amount else 0 end) as approved_amount
        from transactions
        group by 1, 2
    )

select * from monthly_transactions
