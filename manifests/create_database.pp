define influxdb::create_database (
  uri = 'http://localhost:8086',
  user = 'root',
  password = 'root',
) {

  exec { "create database ${title}":
    command => "curl -X POST '${uri}/db?u=${user}&p=${password}' -d '{\"name\": \"${title}\"}'",
    unless  => "curl -s -X POST 'http://localhost:8086/db?u=${user}&p=${password}' -d '{\"name\": \"${title}\"}' | grep -q 'exists'"
  }

}