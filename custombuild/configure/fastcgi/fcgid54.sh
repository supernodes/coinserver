#!/bin/sh

PHP_VER=54

OPTIONS=
if [ "$1" != "" ]; then
        if [ -s "$1" ]; then
                OPTIONS=" -c ${1} ${OPTIONS}"
        fi
fi

if [ "$2" != "" ]; then
	OPTIONS="${OPTIONS} ${2} ${3} ${4} ${5} ${6} ${7} ${8} ${9} ${10} ${11} ${12}"
fi

# http://httpd.apache.org/mod_fcgid/mod/mod_fcgid.html
# Set desired PHP_FCGI_* environment variables.
# Example:
# PHP FastCGI processes exit after 500 requests by default.
# JE: Do not limit it to facilitate XCache (or set it really high, like 10000)
PHP_FCGI_MAX_REQUESTS=0
export PHP_FCGI_MAX_REQUESTS

# See http://www.webhostingtalk.com/archive/index.php/t-1165678.html
PHP_FCGI_CHILDREN=0
export PHP_FCGI_CHILDREN
exec /usr/local/php54/bin/php-cgi54 ${OPTIONS}
