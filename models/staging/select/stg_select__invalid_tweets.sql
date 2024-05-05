with
    source as (
        select
            *
        from
            {{ source('leetcode_db', 'tweets__invalid_tweets') }}
    ),
    renamed as (
        select
            -- ids
            tweet_id as tweet_id,

            -- strings
            content as tweet_text

            -- numerics

            -- booleans

            -- dates

            -- timestamps

        from
            source
    )

select * from renamed
