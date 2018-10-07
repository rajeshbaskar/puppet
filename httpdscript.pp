class httpdinstall {
	$httppkg = 'httpd'
	$servicename =  'httpd'

	package { $httppkg:
 	   ensure => present,
	   notify => Service[$servicename]
	}
	 
	service { $servicename:
	  ensure => running,
	  enable => true,
	}
}
include httpdinstall
