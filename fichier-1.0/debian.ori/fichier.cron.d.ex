#
# Regular cron jobs for the fichier package
#
0 4	* * *	root	[ -x /usr/bin/fichier_maintenance ] && /usr/bin/fichier_maintenance
