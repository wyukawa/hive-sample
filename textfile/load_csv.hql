LOAD DATA LOCAL INPATH '2011-07-03_us.csv' INTO TABLE page_view PARTITION(dt='2011-07-03', country='US');
LOAD DATA LOCAL INPATH '2011-07-04_ca.csv' INTO TABLE page_view PARTITION(dt='2011-07-04', country='CA');

