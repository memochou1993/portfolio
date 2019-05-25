#!/bin/bash

rsync -av --delete-after resources/assets/images/* root@0.0.0.0:/var/www/portfolio/public/storage/images
