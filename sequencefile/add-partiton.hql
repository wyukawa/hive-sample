ALTER TABLE page_view_seq ADD IF NOT EXISTS PARTITION(dt='2011-07-03', country='US');
