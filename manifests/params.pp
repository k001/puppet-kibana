class kibana::params {
  $ensure                      = 'present'
  $port                        = 5601
  $host                        = '127.0.0.1'
  $ssl_port                    = 443
  $elasticsearch_url           = 'http://localhost:9200'
  $elasticsearch_preserve_host = true
  $kibana_index                = '.kibana'
  $default_app_id              = 'discover'
  $request_timeout             = 60
  $shard_timeout               = 30000
  $verify_ssl                  = true
  $ca                          = "${::settings::ssldir}/certs/ca.pem"
  $ssl_key_file                = "${::settings::ssldir}/private_keys/${::clientcert}.pem"
  $ssl_cert_file               = "${::settings::ssldir}/certs/${::clientcert}.pem"
  $pid_file                    = '/var/run/kibana.pid'
  $log_file                    = '/var/log/kibana.log'
  $run_user                    = 'kibana'
}
