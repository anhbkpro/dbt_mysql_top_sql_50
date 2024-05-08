with
    products as (
        select * from {{ref('stg_basic_join__product')}}
    ),
    sales as (
        select * from {{ref('stg_basic_join__sale')}}
    ),
    sales_with_product_name as (
        select
            p.product_name,
            s.year,
            s.price
        from
            sales s
            join products p on s.product_id = p.product_id
    )

select * from sales_with_product_name
