# == Class: influxdb::config
# More information on these settings available at: http://influxdb.org/docs/configuration.html
class influxdb::config {
  ini_setting { 'binding_address':
    section => '',
    setting => 'binding-address',
    value   => $influxdb::binding_address,
  }

  # [logging]
  ini_setting { 'logging_level':
    section => 'logging',
    setting => 'level',
    value   => $influxdb::logging_level,
  }

  ini_setting { 'logging_file':
    section => 'logging',
    setting => 'file',
    value   => $influxdb::logging_file,
  }

  # [admin]
  ini_setting { 'admin_port':
    section => 'admin',
    setting => 'port',
    value   => $influxdb::admin_port,
  }

  ini_setting { 'admin_assets':
    section => 'admin',
    setting => 'assets',
    value   => $influxdb::admin_assets,
  }

  # [api]
  ini_setting { 'api_port':
    section => 'api',
    setting => 'port',
    value   => $influxdb::api_port,
  }

  # [raft]
  ini_setting { 'raft_port':
    section => 'raft',
    setting => 'port',
    value   => $influxdb::raft_port,
  }

  ini_setting { 'raft_dir':
    section => 'raft',
    setting => 'dir',
    value   => $influxdb::raft_dir,
  }

  # [storage]
  ini_setting { 'storage_dir':
    section => 'storage',
    setting => 'dir',
    value   => $influxdb::storage_dir,
  }

  ini_setting { 'storage_write_buffer_size':
    section => 'storage',
    setting => 'write-buffer-size',
    value   => $influxdb::storage_write_buffer_size,
  }

  # [cluster]
  ini_setting { 'cluster_protobuf_port':
    section => 'cluster',
    setting => 'protobuf_port',
    value   => $influxdb::cluster_protobuf_port,
  }

  ini_setting { 'cluster_protobuf_timeout':
    section => 'cluster',
    setting => 'protobuf_timeout',
    value   => $influxdb::cluster_protobuf_timeout,
  }

  ini_setting { 'cluster_protobuf_heartbeat':
    section => 'cluster',
    setting => 'protobuf_heartbeat',
    value   => $influxdb::cluster_protobuf_heartbeat,
  }

  ini_setting { 'cluster_write_buffer_size':
    section => 'cluster',
    setting => 'write-buffer-size',
    value   => $influxdb::cluster_write_buffer_size,
  }

  ini_setting { 'cluster_query_shard_buffer_size':
    section => 'cluster',
    setting => 'query-shard-buffer-size',
    value   => $influxdb::cluster_query_shard_buffer_size,
  }

  # [leveldb]
  ini_setting { 'levledb_max_open_files':
    section => 'levledb',
    setting => 'max-open-files',
    value   => $influxdb::leveldb_max_open_files,
  }

  ini_setting { 'levledb_lru_cache_size':
    section => 'levledb',
    setting => 'lru-cache-size',
    value   => $influxdb::leveldb_lru_cache_size,
  }

  ini_setting { 'levledb_max_open_shards':
    section => 'levledb',
    setting => 'max-open-shards',
    value   => $influxdb::leveldb_max_open_shards,
  }

  ini_setting { 'levledb_point_batch_size':
    section => 'levledb',
    setting => 'point-batch-size',
    value   => $influxdb::leveldb_point_batch_size,
  }

  # [sharding]

  # [wal]
  ini_setting { 'wal_dir':
    section => 'wal',
    setting => 'dir',
    value   => $influxdb::wal_dir,
  }

  ini_setting { 'wal_flush_after':
    section => 'wal',
    setting => 'flush-after',
    value   => $influxdb::wal_flush_after,
  }

  ini_setting { 'wal_bookmark_after':
    section => 'wal',
    setting => 'bookmark-after',
    value   => $influxdb::wal_bookmark_after,
  }

  ini_setting { 'wal_index_after':
    section => 'wal',
    setting => 'index-after',
    value   => $influxdb::wal_index_after,
  }

  ini_setting { 'wal_requests_per_logfile':
    section => 'wal',
    setting => 'requests-per-logfile',
    value   => $influxdb::wal_requests_per_logfile,
  }

  # defaults for all settings
  Ini_setting {
    ensure  => present,
    path    => $influxdb::config_path,
    notify  => Service['influxdb'],
    require => Package['influxdb'],
  }
}