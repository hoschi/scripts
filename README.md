My scripts
==========

Java
----

remove class name after renaming classes in IDEA:

Problem:

	org.hoschi.sweetp.server.web.HooksServlet.log.info 'handle as html'

Should be:

	log.info 'handle as html'

Script:

	sed -i 's/^\(\s*\)\S*\(log\)/\1\2/' server/src/main/groovy/**/*.groovy


X
-

Problem:
Start new session in an existing session.

Srcipt:

	#! /bin/bash
	Xephyr -ac -screen 1910x1140 -br -reset -terminate 2> /dev/null :1 &
	DISPLAY=:1.0
	export DISPLAY=:1.0
	ssh -XfC -c blowfish localhost gnome-session

ZSH
---

for in zsh:

	for file in *.rar; unrar x ${file}
	for i in {1..5}; umount-$i;

ducksboard.com
--------------

Problem:
Show filesystem usage as gauge.

Script:
see ducks-fs.sh
