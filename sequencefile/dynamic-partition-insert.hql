set hive.exec.dynamic.partition=true;
set hive.exec.dynamic.partition.mode=nonstrict;

FROM page_view pv
INSERT OVERWRITE TABLE page_view_seq PARTITION(dt, country)
SELECT
  pv.viewTime,
  pv.userid,
  pv.page_url,
  pv.referrer_url,
  pv.ip,
  pv.dt,
  pv.country
DISTRIBUTE BY pv.dt, pv.country;
