class rajeshsite {
  $pkg = 'httpd'
  $service = 'httpd'
  $directory = ['/var/www/html/techmint.com', '/var/log/httpd/techmint.com']
  
     package { $pkg:
      ensure => present,
      notify => File[$directory]
     }
	 
     file { $directory:
       ensure => directory,
       owner => root,
       group => root,
     }
	 
     file { '/etc/httpd/conf.d/vhost.conf':
       ensure => present,
       source => '/var/tmp/vhost.conf'
     }
	 
     file { '/var/www/html/index.html':
	ensure => present,
	content => "This is my first website"
     }
	
     service { $service:
        ensure => running,
	enable => true,
	
     }
 }
   include rajeshsite
