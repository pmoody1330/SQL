mysql -u qruser -p -h 192.168.1.191
USE qr;
INSERT INTO albums(artist, title, url, date, presenter) VALUES ("Francis Cabrel", 'Les Beaux Dégâts', 'http://192.168.1.150:32400/web/index.html#!/server/d2b68f58e05d480418bad8d75a70a2184f6081c0/details?key=%2Flibrary%2Fmetadata%2F22668&context=', now(), NULL);
INSERT INTO albums(artist, title, url, date, presenter) VALUES ('Geggy Tah', 'Sacred Cow', 'http://192.168.1.150:32400/web/index.html#!/server/d2b68f58e05d480418bad8d75a70a2184f6081c0/details?key=%2Flibrary%2Fmetadata%2F21495&context=library%3Acontent.library~111~0', now(), NULL);
INSERT INTO albums(artist, title, url, date, presenter) VALUES ('Imagine Dragons', 'Evolve', 'http://192.168.1.150:32400/web/index.html#!/server/d2b68f58e05d480418bad8d75a70a2184f6081c0/details?key=%2Flibrary%2Fmetadata%2F38891&context=library%3Acontent.library~130~1', now(), NULL);
INSERT INTO albums(artist, title, url, date, presenter) VALUES ('Guy Davis', 'Legacy', 'http://192.168.1.150:32400/web/index.html#!/server/d2b68f58e05d480418bad8d75a70a2184f6081c0/details?key=%2Flibrary%2Fmetadata%2F2248', now(), NULL);
INSERT INTO albums(artist, title, url, date, presenter) VALUES ('Jewel', 'Joy: A Holiday Collection', 'http://192.168.1.150:32400/web/index.html#!/server/d2b68f58e05d480418bad8d75a70a2184f6081c0/details?key=%2Flibrary%2Fmetadata%2F368&context=library%3Acontent.library~143~4', now(), NULL);
INSERT INTO albums(artist, title, url, date, presenter) VALUES ('John Denver', 'The Rocky Mountain Collection', 'http://192.168.1.150:32400/web/index.html#!/server/d2b68f58e05d480418bad8d75a70a2184f6081c0/details?key=%2Flibrary%2Fmetadata%2F23101&context=library%3Acontent.library~151~5', now(), NULL);
select artist, title from albums order by artist, title;

ssh -L 12341:127.0.0.1:3306 192.168.1.191 &
mysql -h 127.0.0.1 -p 12341

find -R / my.cnf
sudo vim /etc/mysql/mysql.conf.d/mysql.cnf 
sudo vim /etc/mysql/mysql.conf.d/mysqld.cnf 

/* '/var/lib/mysql-files/test.csv' */

select artist, title, URL 
into OUTFILE '/var/lib/mysql-files/test.csv'
fields terminated by ','
enclosed by '"'
lines terminated by '\n'
from albums 
order by artist, title;

select concat(artist, ' - ', title, '.png') as filename, URL 
from albums
where artist <> 'Various';

select concat(presenter, ' - ', title, '.png') as filename, URL 
from albums
where artist = 'Various';