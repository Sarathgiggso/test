CREATE SCHEMA hive.logs WITH (location = 'wasbs://gglogs@ggdevcoldstorage.blob.core.windows.net/');
CREATE TABLE hive.logs.gglogs (
		hostApiToken varchar,
		message varchar,
		taggedGroups varchar,
		hostname varchar,
		posteddate varchar,
		feedText varchar,
		timestamp bigint,
		year int,
		month int,
		date int
	 ) 
	 WITH (
		external_location = 'wasbs://gglogs@ggdevcoldstorage.blob.core.windows.net/',
		format = 'ORC',
		partitioned_by = ARRAY['year','month','date']
	 );
CALL system.create_empty_partition(
    schema_name => 'logs',
    table_name => 'gglogs',
    partition_columns => ARRAY['year','month','date'],
    partition_values => ARRAY['2021','02','22']);

CALL system.sync_partition_metadata(schema_name=>'logs', table_name=>'gglogs', mode=>'FULL');

