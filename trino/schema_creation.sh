CREATE SCHEMA hive.logs WITH (location = 'wasbs://gglogspt@storageaccountname.blob.core.windows.net/');
CREATE TABLE hive.logs.gglogspt (
message varchar,
taggedgroups varchar,
hostname varchar,
posteddate varchar,
timestamp timestamp,
year int,
month int,
date int
)
WITH (
external_location = 'wasbs://gglogspt@storageaccountname.blob.core.windows.net/',
format = 'JSON',
partitioned_by = ARRAY['year','month','date']
);

CALL system.create_empty_partition(
    schema_name => 'logs',
    table_name => 'gglogspt',
    partition_columns => ARRAY['year','month','date'],
    partition_values => ARRAY['2021','02','22']);

CALL system.sync_partition_metadata(schema_name=>'logs', table_name=>'gglogspt', mode=>'FULL');
