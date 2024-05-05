Create table If Not Exists tweets__invalid_tweets(tweet_id int, content varchar(50))
Truncate table tweets__invalid_tweets
insert into tweets__invalid_tweets (tweet_id, content) values ('1', 'Vote for Biden')
insert into tweets__invalid_tweets (tweet_id, content) values ('2', 'Let us make America great again!')
