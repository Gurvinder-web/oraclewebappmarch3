#!/bin/bash

if [ "$color" == "black" ]

then

	cp /opt/guri.html /var/www.html/index.html
	httpd -DFOREGROUND

elif [ "$color" == "red" ]

then 

	cp /opt/red.html /var/www.html/index.html
	httpd -DFOREGROUND

elif [ "$color" == "green" ]

then

	cp /opt/green.html /var/www.html/index.html
        httpd -DFOREGROUND

else

	echo "sorry no Color found" >/var/www.html/index.html
	httpd -DFOREGROUND	

fi	
