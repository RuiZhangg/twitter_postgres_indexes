SET max_parallel_maintenance_workers TO 40;
SET maintenance_work_mem TO '10 GB';
CREATE INDEX ON tweet_tags(tag, id_tweets);
CREATE INDEX ON tweet_tags(id_tweets);
CREATE INDEX ON tweets(id_tweets, lang);
CREATE INDEX ON tweets(lang);
CREATE INDEX ON tweets USING gin(to_tsvector('english',text));
