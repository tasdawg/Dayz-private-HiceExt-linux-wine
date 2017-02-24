DayZ 1.8.8 with db fix - Thanks to skiperh1n1

All who have this error: Database: [Error] Error 1146 (Table 'hivemind.Object_DATA' doesn't exist) in MySQLQuery SQL: 'SELECT COUNT(*) FROM Object_DATA WHERE Instance = 1337 AND ObjectUID <> 0 AND CharacterID <> 0 AND Datestamp < DATE_SUB(CURRENT_TIMESTAMP, INTERVAL 6 DAY) AND ( (Inventory IS NULL) OR (Inventory = '[]') )' Database: [Error] Error 1146 (Table 'hivemind.Object_DATA' doesn't exist) in MySQLQuery SQL: 'SELECT ObjectID, Classname, CharacterID, Worldspace, Inventory, Hitpoints, Fuel, Damage FROM Object_DATA WHERE Instance=1337 AND Classname IS NOT NULL'

Can use this server build.

This server master build have a little fix in database for using with remote Linux servers.

Server ready to work.
Installation server

    Download Arma 2+ Arma 2:OA and mod DayZ
    Download and install wine1.6
	when installing wine Make sure you install these files in this order.

	vcrun2010
	vcrun2008
	dotnet4
	d3dx9
	msasn1
	crypt32
	secur32
	cmd
	msxml3

	xact
	xact_jun2010

    Download server-master
    Copy to arma2 folder
    Create mysql database hivemind
    Username and password can be change in "cfgdayz/HiveExt.ini"
    Upload the SQL file Linux mysql database
    Change settings in server.cfg and in folder BattlEye/BEserver.cfg

    To stop hackers move cfgdayz to a new folder and rename it to random generated filename eg 22k3jh4h5h6k/3jh32b6b7b7k67.cfg
	
	Run "StartDayz.sh"
