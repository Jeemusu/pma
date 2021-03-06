#!/bin/bash

echo 'Downloading PhpMyAdmin 4.4.10'
curl -#L http://sourceforge.net/projects/phpmyadmin/files/phpMyAdmin/4.4.10/phpMyAdmin-4.4.10-english.tar.gz -o phpmyadmin.tar.gz

mkdir phpmyadmin && tar xf phpmyadmin.tar.gz -C phpmyadmin --strip-components 1

rm phpmyadmin.tar.gz

sudo bash /vagrant/scripts/serve.sh phpmyadmin.app $(pwd)/phpmyadmin
