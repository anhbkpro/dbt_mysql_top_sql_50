with
    countries as (
        select * from {{ ref('stg_select__big_countries') }}
    ),
    big_countries as (
        select
            country_name,
            country_continent,
            country_population,
            country_area,
            country_gdp
        from
            countries
        where
            country_area > 3000000 and country_population > 25000000
    ),

    renamed as (
        select
            country_name as name,
            country_continent as continent,
            country_area as area,
            country_population as population,
            country_gdp as gdp
        from
            big_countries
    )

select * from renamed
