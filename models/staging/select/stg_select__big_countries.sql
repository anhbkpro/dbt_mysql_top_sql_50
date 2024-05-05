with
    source as (
        select
            *
        from
            {{ source('leetcode_db_select', 'world__big_countries') }}
    ),
    renamed as (
        select
            -- ids

            -- strings
            name as country_name,
            continent as country_continent,

            -- numerics
            population as country_population,
            area as country_area,
            gdp as country_gdp
        from
            source
    )

select * from renamed
