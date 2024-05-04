with
    customer_referee as (
        select * from {{ ref('stg_select__find_customer_referee') }}
    ),
    -- Find the names of the customer that are not referred by the customer with id = 2.
    customers_not_referred_by_2 as (
        select
            id as customer_id,
            name as customer_name
        from
            customer_referee
        where
            referee_id is null or referee_id != 2
    ),
    renamed as (
        select
            customer_name as name
        from
            customers_not_referred_by_2
    )

select * from renamed
