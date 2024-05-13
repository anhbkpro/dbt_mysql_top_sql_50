with
    temperature as (
        select * from {{ ref('stg_basic_join__weather') }}
    ),
    rising as (
        select
            temperature1.weather_id as id
        from temperature temperature1
        join temperature temperature2
        on temperature1.weather_id = temperature2.weather_id + 1
        where temperature1.temperature > temperature2.temperature
    )

select * from rising
