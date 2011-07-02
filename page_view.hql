DROP TABLE page_view;
CREATE TABLE page_view (
  viewTime INT,
  userid BIGINT,
  page_url STRING,
  referrer_url STRING,
  ip STRING COMMENT 'IP Address of the User')
 COMMENT 'This is the page view table'
 PARTITIONED BY(dt STRING, country STRING)
 ROW FORMAT DELIMITED
 FIELDS TERMINATED BY ','
 STORED AS TEXTFILE;

