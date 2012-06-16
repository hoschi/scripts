#! /bin/bash

cd /home/hoschi/backup/filing
mongoexport -d filing -c files -o filing.json
git commit -a -m "backup: `date`"
