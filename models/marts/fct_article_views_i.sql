with
    article_views as (
        select * from {{ ref('stg_select__article_views_i') }}
    ),
    -- find all the authors that viewed at least one of their own articles.
    authors_that_viewed_own_articles as (
        select
            author_id
        from
            article_views
        where
            author_id = viewer_id
    ),
    renamed as (
        select distinct(author_id) as id
        from
            authors_that_viewed_own_articles
    )

select * from renamed
