class package_installation {

	if $::osfamily == 'Redhat'{
	   $pkgname = [ 'screen', 'strace', 'sudo' ]  
 	}

	elsif $::osfamily == 'Debian'{
	   $pkgname = [ 'screen', 'strace', 'sudo' ]
        } else {
	$pkgname = [ 'screen' ]
	}


	package { $pkgname:
	 ensure => absent,
	  }
 }
  include package_installation
