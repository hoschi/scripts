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

How to generate file names:

[See manual](http://www.cs.elte.hu/zsh-manual/zsh_6.html#SEC33)

* \*
  * Matches any string, including the null string.
* ?
  * Matches any character.
* [...]
  * Matches any of the enclosed characters. Ranges of characters can be specified by separating two characters by a -. A - or ] may be matched by including it as the first character in the list.
* [^...]
* [!...]
  * Like [...], except that it matches any character which is not in the given set.
* \<x-y\>
  * Matches any number in the range x to y, inclusive. If x is omitted, the number must be less than or equal to y. If y is omitted, the number must be greater than or equal to x. A pattern of the form <-> matches any number.
* ^x
  * Matches anything except the pattern x.
* x|y
  * Matches either x or y.
* x#
  * Matches zero or more occurrences of the pattern x.
* x##
  * Matches one or more occurrences of the pattern x.

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
