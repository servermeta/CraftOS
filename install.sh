#!/bin/bash


chmod +x /usr/games/minecraft/server.py /usr/games/minecraft/mineos_console.py /usr/games/minecraft/generate-sslcert.sh

ln -s /usr/games/minecraft/mineos_console.py /usr/local/bin/craftos

cp /usr/games/minecraft/init/craftos /etc/init.d/

chmod 744 /etc/init.d/craftos

update-rc.d craftos defaults

cp /usr/games/minecraft/craftos.conf /etc/

/usr/games/minecraft/generate-sslcert.sh

ln -s /var/games/minecraft/servers/ /home/ubuntu/servers

chown -R ubuntu /var/games/minecraft/profiles/


service craftos start

