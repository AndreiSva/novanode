#!/bin/sh

npm run build
rsync -f --ignore-existing -ar --progress ./build andrei@rm-r.org:/var/www/andrei.rm-r.org/
rsync -f --ignore-existing -ar --progress ./static andrei@rm-r.org:/var/www/andrei.rm-r.org/
systemctl --host=root@rm-r.org restart AndreiSite
