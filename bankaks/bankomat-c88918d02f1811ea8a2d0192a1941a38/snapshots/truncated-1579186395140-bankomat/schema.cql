CREATE TABLE IF NOT EXISTS bankaks.bankomat (
	bankomatid text PRIMARY KEY,
	broj text,
	datumservisa text,
	filijalaid text,
	lokacija text,
	status text,
	proizvodjac text,
	komentari text)
	WITH ID = c88918d0-2f18-11ea-8a2d-0192a1941a38
	AND bloom_filter_fp_chance = 0.01
	AND dclocal_read_repair_chance = 0.1
	AND crc_check_chance = 1.0
	AND default_time_to_live = 0
	AND gc_grace_seconds = 864000
	AND min_index_interval = 128
	AND max_index_interval = 2048
	AND memtable_flush_period_in_ms = 0
	AND read_repair_chance = 0.0
	AND speculative_retry = '99PERCENTILE'
	AND comment = ''
	AND caching = { 'keys': 'ALL', 'rows_per_partition': 'NONE' }
	AND compaction = { 'max_threshold': '32', 'min_threshold': '4', 'class': 'org.apache.cassandra.db.compaction.SizeTieredCompactionStrategy' }
	AND compression = { 'chunk_length_in_kb': '64', 'class': 'org.apache.cassandra.io.compress.LZ4Compressor' }
	AND cdc = false
	AND extensions = {  };
ALTER TABLE bankaks.bankomat DROP proizvodjac USING TIMESTAMP 1579122478061000;
ALTER TABLE bankaks.bankomat DROP komentari USING TIMESTAMP 1579122496179000;
CREATE INDEX bankomat_broj_idx ON bankaks.bankomat (broj);
CREATE INDEX bankomat_filijalaid_idx ON bankaks.bankomat (filijalaid);
