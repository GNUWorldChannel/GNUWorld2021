#!/bin/bash

echo -e "\e[32m Creating CService DB ... \e[0m "
/usr/local/pgsql/bin/createdb --template=template0 -E=SQL_ASCII cservice
echo -e "\e[33m Import *.sql to CService DB \e[0m"
/usr/local/pgsql/bin/psql cservice < cservice.sql  
/usr/local/pgsql/bin/psql cservice < cservice.config.sql
/usr/local/pgsql/bin/psql cservice < languages.sql
/usr/local/pgsql/bin/psql cservice < language_table.sql
/usr/local/pgsql/bin/psql cservice < greeting.sql
/usr/local/pgsql/bin/psql cservice < cservice.help.sql
/usr/local/pgsql/bin/psql cservice < cservice.web.sql
/usr/local/pgsql/bin/psql cservice < cservice.addme.sql
echo  "-----"
echo  " "
echo -e "\e[32m Creating local_db ...\e[0m"
/usr/local/pgsql/bin/createdb local_db
echo -e "\e[33m Import *.sql to local_db\e[0m"
/usr/local/pgsql/bin/psql local_db < local_db.sql
echo  "-----"
echo  " "
echo -e "\e[32m Creating ccontrol DB ...\e[0m"
/usr/local/pgsql/bin/createdb --template=template0 -E=SQL_ASCII ccontrol
echo -e "\e[33m Import *.sql to ccontrol ...\e[0m"
/usr/local/pgsql/bin/psql ccontrol < ccontrol.sql
/usr/local/pgsql/bin/psql ccontrol < ccontrol.help.sql
/usr/local/pgsql/bin/psql ccontrol < ccontrol.addme.sql
/usr/local/pgsql/bin/psql ccontrol < ccontrol.commands.sql
echo  "-----"
echo  " "
echo -e "\e[32m Creating chanfix DB ...\e[0m"
/usr/local/pgsql/bin/createdb chanfix
echo -e "\e[33m Import *.sql to chanfix ...\e[0m"
/usr/local/pgsql/bin/psql chanfix < ../mod.openchanfix/doc/chanfix.sql
/usr/local/pgsql/bin/psql chanfix < ../mod.openchanfix/doc/chanfix.languages.sql
/usr/local/pgsql/bin/psql chanfix < ../mod.openchanfix/doc/chanfix.language.english.sql
/usr/local/pgsql/bin/psql chanfix < ../mod.openchanfix/doc/chanfix.help.sql
/usr/local/pgsql/bin/psql chanfix < ../mod.openchanfix/doc/chanfix.addme.sql
echo  "-----"
echo  " "
echo -e "\e[92m Congratulations! All DB are Create: \e[5mcservice, \e[5mlocal_db, \e[5mccontrol, \e[5mchanfix"