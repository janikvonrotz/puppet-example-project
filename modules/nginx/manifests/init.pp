class nginx (
	$port,
	$host,
	$welcome_message,
) {
    file {
        "/tmp/index.html":
            ensure => file,
            source => "puppet:///modules/nginx/index.html",
    }
}
