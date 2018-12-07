class nginx (
	Integer $port,
	String $host,
	String $welcome_message,
) {

	package { "nginx":
		ensure => installed,
	}

	service { "nginx":
		ensure => running,
	}

	file { "/usr/share/nginx/html/index.html":
      		ensure  => present,
		content => epp("nginx/index.html.epp"),
	}

	file { "/etc/nginx/nginx.conf":
		ensure  => present,
		content => epp("nginx/nginx.conf.epp"),
		notify => Service['nginx'],
  	}
}
