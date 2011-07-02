set hive.exec.compress.intermediate=true;
set hive.exec.compress.output=true;
set mapred.output.compression.type=BLOCK;
set mapred.output.compression.codec=org.apache.hadoop.io.compress.GzipCodec;

INSERT OVERWRITE TABLE page_view_seq PARTITION(dt='2011-07-03', country='US')
SELECT
  viewTime,
  userid,
  page_url,
  referrer_url,
  ip
FROM
  page_view
;
