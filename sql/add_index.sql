use isupipe;

ALTER TABLE icons ADD hash varchar(255) NOT NULL;

ALTER TABLE themes ADD INDEX userid(user_id);
ALTER TABLE reservation_slots ADD INDEX startend(start_at, end_at);
ALTER TABLE reactions ADD INDEX livestreamidcreated(livestream_id, created_at);
ALTER TABLE ng_words ADD INDEX userlivestreamid(user_id, livestream_id);
ALTER TABLE livestream_tags ADD INDEX livestream_id(livestream_id);
ALTER TABLE livecomments ADD INDEX livestreamidcreated(livestream_id, created_at);
ALTER TABLE livecomments ADD INDEX live(livestream_id);
ALTER TABLE livecomments ADD INDEX user(user_id);
ALTER TABLE livestream_viewers_history ADD INDEX userlivestreamid(user_id, livestream_id);
ALTER TABLE livestreams ADD INDEX `user_id`(`user_id`);
ALTER TABLE reactions ADD INDEX livestreamidcreated(livestream_id, created_at);
ALTER TABLE icons ADD INDEX userid(user_id);
ALTER TABLE livecomment_reports ADD INDEX livecomment_reports(livecomment_id);

set global long_query_time = 1;
set global log_queries_not_using_indexes = 1;
set global slow_query_log = 1;


 show variables like 'slow%';



use isudns;

ALTER TABLE records ADD INDEX disablednamedomain(disabled, name, domain_id);
