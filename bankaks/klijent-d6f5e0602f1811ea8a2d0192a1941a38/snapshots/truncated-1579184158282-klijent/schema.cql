CREATE TABLE IF NOT EXISTS bankaks.klijent (
	klijentid text PRIMARY KEY,
	adresa text,
	bankaid text,
	email text,
	ime text,
	prezime text,
	sifra text,
	telefon text,
	tip text,
	komentari text)
	WITH ID = d6f5e060-2f18-11ea-8a2d-0192a1941a38
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
ALTER TABLE bankaks.klijent DROP komentari USING TIMESTAMP 1578420083248000;
CREATE INDEX klijent_bankaid_idx ON bankaks.klijent (bankaid);
CREATE INDEX klijent_telefon_idx ON bankaks.klijent (telefon);
