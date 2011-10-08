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
