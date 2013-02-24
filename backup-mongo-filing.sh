#! /bin/bash

DIR="/home/hoschi/backup/filing"
if [ -d "$DIR" ]; then
	cd $DIR
	mongoexport -d filing -c files -o filing.json
	git commit -a -m "backup: `date`"
fi
