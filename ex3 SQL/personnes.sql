use testbd2;

create table personnes (
	id INT not null primary key auto_increment,
	nom VARCHAR(50),
	prenom VARCHAR(50),
	email VARCHAR(50),
	code_pays CHAR(2)
);

insert into personnes 
(nom, prenom, email, code_pays) 
values 
('Romona', 'Jennings', 'rjennings0@nasa.gov', 'AR'),
('Gwennie', 'Winkle', 'gwinkle1@who.int', 'CN'),
('Robbie', 'Shyres', 'rshyres2@hatena.ne.jp', 'CD'),
('Rod', 'Smullin', 'rsmullin3@a8.net', 'FR'),
('Kriste', 'Aronson', 'karonson4@tumblr.com', 'PL'),
('Berk', 'Ellin', 'bellin5@washingtonpost.com', 'US'),
('Morie', 'Algore', 'malgore6@tiny.cc', 'PL'),
('Gaylene', 'Eidler', 'geidler7@drupal.org', 'EG'),
('Jesse', 'Skipworth', 'jskipworth8@cnet.com', 'MY'),
('Teddi', 'Dudding', 'tdudding9@tamu.edu', 'ID'),
('Gilburt', 'Bass', 'gbassa@deviantart.com', 'PH'),
('Kass', 'Earl', 'kearlb@dailymotion.com', 'US'),
('Cherilyn', 'Leaf', 'cleafc@rambler.ru', 'AF'),
('Haley', 'Meagh', 'hmeaghd@booking.com', 'CN'),
('Urban', 'Rainford', 'urainforde@vk.com', 'CN'),
('Vanni', 'Vowden', 'vvowdenf@mediafire.com', 'CN');
