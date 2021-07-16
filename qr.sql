mysql -u qruser -p -h 192.168.1.191
USE qr;
INSERT INTO albums(artist, title, url, date, presenter) VALUES ("Francis Cabrel", 'Les Beaux Dégâts', 'http://192.168.1.150:32400/web/index.html#!/server/d2b68f58e05d480418bad8d75a70a2184f6081c0/details?key=%2Flibrary%2Fmetadata%2F22668&context=', now(), NULL);
INSERT INTO albums(artist, title, url, date, presenter) VALUES ('Geggy Tah', 'Sacred Cow', 'http://192.168.1.150:32400/web/index.html#!/server/d2b68f58e05d480418bad8d75a70a2184f6081c0/details?key=%2Flibrary%2Fmetadata%2F21495&context=library%3Acontent.library~111~0', now(), NULL);
INSERT INTO albums(artist, title, url, date, presenter) VALUES ('Imagine Dragons', 'Evolve', 'http://192.168.1.150:32400/web/index.html#!/server/d2b68f58e05d480418bad8d75a70a2184f6081c0/details?key=%2Flibrary%2Fmetadata%2F38891&context=library%3Acontent.library~130~1', now(), NULL);
INSERT INTO albums(artist, title, url, date, presenter) VALUES ('Guy Davis', 'Legacy', 'http://192.168.1.150:32400/web/index.html#!/server/d2b68f58e05d480418bad8d75a70a2184f6081c0/details?key=%2Flibrary%2Fmetadata%2F2248', now(), NULL);
INSERT INTO albums(artist, title, url, date, presenter) VALUES ('Jewel', 'Joy: A Holiday Collection', 'http://192.168.1.150:32400/web/index.html#!/server/d2b68f58e05d480418bad8d75a70a2184f6081c0/details?key=%2Flibrary%2Fmetadata%2F368&context=library%3Acontent.library~143~4', now(), NULL);
INSERT INTO albums(artist, title, url, date, presenter) VALUES ('John Denver', 'The Rocky Mountain Collection', 'http://192.168.1.150:32400/web/index.html#!/server/d2b68f58e05d480418bad8d75a70a2184f6081c0/details?key=%2Flibrary%2Fmetadata%2F23101&context=library%3Acontent.library~151~5', now(), NULL);
select artist, title from albums order by artist, title;
