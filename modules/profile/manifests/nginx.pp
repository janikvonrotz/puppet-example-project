class profile::nginx (
  Integer $port = '80',
  String $host = 'default_server',
  String $welcome_message = 'hello world',
) {

  class { "base":
	username => "dummy",
  }

  class { "nginx":
    port => $port,
    host => $host,
    welcome_message => $welcome_message,
  }
}
