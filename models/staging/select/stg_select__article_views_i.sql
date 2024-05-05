with
    source as (
        select * from {{ source('leetcode_db', 'views__article_views_i') }}
    ),
    renamed as (
        select
            -- ids
            article_id as article_id,
            author_id as author_id,
            viewer_id as viewer_id,

            -- strings

            -- numerics

            -- booleans

            -- dates
            view_date as view_date
        from
            source
    )

select * from renamed
