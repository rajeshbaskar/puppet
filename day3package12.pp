class package_installation {

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


    package { $pkganme:
     ensure => present,
       }
   }
   include package_installation 
