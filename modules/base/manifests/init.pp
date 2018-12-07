class base (
  String $username,
) {
  user { $username:
    ensure => present,
  }
}
