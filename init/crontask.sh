#!/bin/bash

cp -R /config/sickrage-edits/gui/slick /app/sickrage/gui/

crontab -l > mycron
echo "0/5 * * * * cp -R /config/sickrage-edits/gui/slick /app/sickrage/gui/" >> mycron
crontab mycron
rm mycron

