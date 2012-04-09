# My scripts

## ducksboard.com

Problem:
Show filesystem usage as gauge. See DucksFsSamplePicture.png

Script:
see ducks-fs.sh and execute it by hand or create a line at your crontab
with crontab -e and add following:

	@hourly bash /home/hoschi/bin/ducks-fs.sh /home YOURDASHBOARDID YOURAPIKEY >/dev/null


## Java

remove class name after renaming classes in IDEA:

Problem:

	org.hoschi.sweetp.server.web.HooksServlet.log.info 'handle as html'

Should be:

	log.info 'handle as html'

Script:

	sed -i 's/^\(\s*\)\S*\(log\)/\1\2/' server/src/main/groovy/**/*.groovy


## X

Problem:
Start new session in an existing session.

Srcipt:

	#! /bin/bash
	Xephyr -ac -screen 1910x1140 -br -reset -terminate 2> /dev/null :1 &
	DISPLAY=:1.0
	export DISPLAY=:1.0
	ssh -XfC -c blowfish localhost gnome-session

## ZSH

for in zsh:

	for file in *.rar; unrar x ${file}
	for file in *; do pwd; echo "this is a test ${file}"; done
	for i in {1..5}; umount-$i;

## Linux

Problem:
Set permission only for files or folders.

Files:

	find . -type f -exec chmod 0644 {} \;

Folders:

	find . -type d -exec chmod 0755 {} \;

Problem:
Create screen session at startup automataically so you can always join it and
never must create it. See create-screen.sh and at this to your startup routine.
