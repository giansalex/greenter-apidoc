#!/bin/sh

curl -O sami.phar https://github.com/thegreenter/reference/releases/download/1.0/sami.phar
php sami.phar update config.php
