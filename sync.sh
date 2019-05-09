#!/bin/bash

rsync -av --delete-after resources/assets/images/* root@139.162.101.50:/var/www/portfolio/public/storage/images
