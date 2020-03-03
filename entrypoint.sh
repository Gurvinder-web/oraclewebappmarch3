#!/bin/bash

if [ "$color" == "black" ]

then

	cp /opt/guri.html /var/www.html/index.html
	httpd -DFOREGROUND

elseif [ "$color" == "red" ]

then 

	cp /opt/red.html /var/www.html/index.html
	httpd -DFOREGROUND

elseif [ "$color" == "green" ]

then

	cp /opt/green.html /var/www.html/index.html
        httpd -DFOREGROUND

then

	echo "sorry no Color found" >/var/www.html/index.html
	httpd -DFOREGROUND	

fi	
