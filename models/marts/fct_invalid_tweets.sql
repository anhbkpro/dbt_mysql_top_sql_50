with
    tweets as (
        select * from {{ ref('stg_select__invalid_tweets') }}
    ),
    invalid_tweets as (
        select
            tweet_id
        from
            tweets
        where
            CHAR_LENGTH(tweet_text) > 15
    )

select * from invalid_tweets
