#!/bin/bash

if  [  "$color"  ==  "black"  ]

then
        cp  /opt/guri.html   /var/www/html/index.html
        cp  /opt/docker.png  /var/www/html/
        httpd  -DFOREGROUND

elif  [   "$color"  ==  "red"    ]

then
        cp   /opt/red.html   /var/www/html/index.html
        cp  /opt/docker.png  /var/www/html/
        httpd  -DFOREGROUND

elif  [   "$color"  ==   "green"     ]

then

        cp   /opt/green.html   /var/www/html/index.html
        cp  /opt/docker.png  /var/www/html/
        httpd  -DFOREGROUND

else
        echo  "Opps ! Sorry no color found  "   >/var/www/html/index.html
        httpd  -DFOREGROUND


fi
