# GNUWorld2020

gnuworld@ircd:~$ wget https://github.com/GNUWorldChannel/GNUWorld2020/blob/master/gnuworld.tar.gz
gnuworld@ircd:~$ tar -xvf gnuworld.tar.gz
gnuworld@ircd:~$ cd gnuworld
gnuworld@ircd:~/gnuworld$ chmod +x configure 

gnuworld@ircd:~/gnuworld$ ./configure --enable-modules=ccontrol,cservice,openchanfix --with-pgsql-home=/usr/local/pgsql --with-extra-includes=/usr/include/postgresql/
gnuworld@ircd:~/gnuworld$ make

gnuworld@ircd:~/gnuworld$ make install
	 
	 NOTE: NOW we going to create SQL and import .sql files inside the database!

	 NOTE: In this step we still in the dir: /home/gnuworld/gnuworld NOW going to enter in the same dir in DOC directory.

gnuworld@ircd:~/gnuworld$ cd doc/
gnuworld@ircd:~/gnuworld/doc$ <now we are here.
gnuworld@ircd:~/gnuworld/doc$ chmod +x do-db.sh
gnuworld@ircd:~/gnuworld/doc$  ./do-db.sh
gnuworld@ircd:~/gnuworld/doc$ cd ..
gnuworld@ircd:~/gnuworld$/