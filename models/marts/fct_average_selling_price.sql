with
    prices as (select * from {{ ref('stg_aggregate__prices') }}),
    units_sold as (select * from {{ ref('stg_aggregate__unitssold') }}),
    average_price as (
        select
            p.product_id,
            round(sum(p.price * u.units) / sum(u.units), 2) as average_price
        from
            prices p
            join units_sold u on p.product_id = u.product_id
            and u.purchase_date between p.start_date and p.end_date
        group by
            p.product_id
    )
select * from average_price
