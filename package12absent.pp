	class package_installtion {
	
	case $::osfamily {
		'Redhat' : {
		  $pkgname = [ 'screen', 'strace', 'sudo' ]
		}
		 'Debian' : {
		  $pkgname = [ 'screen', 'strace', 'sudo' ]
		}
 		default: {
		 $pkgname = [ 'screen' ]
		}


	}
	package { $pkgname:
	  ensure => absent,
 		 }
	}
	include package_installtion
