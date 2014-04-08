#! /bin/bash

DIR="/home/hoschi/backup/tvshm"
if [ -d "$DIR" ]; then
	cd $DIR
	mongoexport -d tvshm-stable -c show -o show.json
	git commit -a -m "backup: `date`"
fi
