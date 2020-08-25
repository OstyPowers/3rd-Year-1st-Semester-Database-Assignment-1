create database HealthTech;
use HealthTech;

create table Patient (
	patientID int primary key not null,
    pFirstName varchar(20) not null,
    pLastName varchar(20) not null,
    pAddress varchar(50) not null,
    pSuburb varchar(50) not null,
    pCity varchar(50) not null, 
    pPostCode varchar(15) default null,
    pRegion varchar(50) not null, 
    pPhoneNumber varchar(20) not null,
    pDob date not null
) engine = InnoDB;

create table altContact (
	altContactID int primary key not null,
    altFirstName varchar(20) not null,
    altLastName varchar(20) not null,
    altAddress varchar(50) not null,
    altSuburb varchar(50) not null,
    altCity varchar(50) not null, 
    altPostCode varchar(15) default null,
    altRegion varchar(50) not null, 
    altPhoneNumber varchar(20) not null,
    altDob date not null,
    patientID int(11),
    foreign key (patientID) references Patient (patientID)
    ) engine = InnoDB;
  
create table Worker (
	workerID int primary key not null,
    wFirstName varchar(20) not null,
    wLastName varchar(20) not null,
    wPhNumber varchar(20) not null,
    wEmail varchar(30) not null,
    wRole varchar(20) not null,
    clockIn datetime not null,
    clockOut datetime not null
    ) engine = InnoDB;
    
alter table altContact 
ADD relationship varchar(30);

UPDATE `altContact` SET `relationship` = "Sybil Morales" WHERE `altContactID` = 1;
UPDATE `altContact` SET `relationship` = "Karen Larsen" WHERE `altContactID` = 2;
UPDATE `altContact` SET `relationship` = "Rhoda Richard" WHERE `altContactID` = 3;
UPDATE `altContact` SET `relationship` = "Yetta Green" WHERE `altContactID` = 4;
UPDATE `altContact` SET `relationship` = "Blythe Walter" WHERE `altContactID` = 5;
UPDATE `altContact` SET `relationship` = "Kaden Wiggins" WHERE `altContactID` = 6;
UPDATE `altContact` SET `relationship` = "Cheryl Stephens" WHERE `altContactID` = 7;
UPDATE `altContact` SET `relationship` = "Melyssa Bray" WHERE `altContactID` = 8;
UPDATE `altContact` SET `relationship` = "Basia Cummings" WHERE `altContactID` = 9;
UPDATE `altContact` SET `relationship` = "Lila Holmes" WHERE `altContactID` = 10;
UPDATE `altContact` SET `relationship` = "Georgia Pearson" WHERE `altContactID` = 11;
UPDATE `altContact` SET `relationship` = "Demetria Boyd" WHERE `altContactID` = 12;
UPDATE `altContact` SET `relationship` = "Tanisha William" WHERE `altContactID` = 13;
UPDATE `altContact` SET `relationship` = "Iris Mayo" WHERE `altContactID` = 14;
UPDATE `altContact` SET `relationship` = "Danielle Ferrell" WHERE `altContactID` = 15;
UPDATE `altContact` SET `relationship` = "Skyler Mccall" WHERE `altContactID` = 16;
UPDATE `altContact` SET `relationship` = "Mia Barr" WHERE `altContactID` = 17;
UPDATE `altContact` SET `relationship` = "Cara Cox" WHERE `altContactID` = 18;
UPDATE `altContact` SET `relationship` = "Alexis Eaton" WHERE `altContactID` = 19;
UPDATE `altContact` SET `relationship` = "Raven Reese" WHERE `altContactID` = 20;
UPDATE `altContact` SET `relationship` = "Kim Sweeney" WHERE `altContactID` = 21;
UPDATE `altContact` SET `relationship` = "Moana Patton" WHERE `altContactID` = 22;
UPDATE `altContact` SET `relationship` = "Sara Delgado" WHERE `altContactID` = 23;
UPDATE `altContact` SET `relationship` = "Kevyn Montoya" WHERE `altContactID` = 24;
UPDATE `altContact` SET `relationship` = "Irene Mckinney" WHERE `altContactID` = 25;
UPDATE `altContact` SET `relationship` = "Evangeline Byers" WHERE `altContactID` = 26;
UPDATE `altContact` SET `relationship` = "Aubrey Fitzpatrick" WHERE `altContactID` = 27;
UPDATE `altContact` SET `relationship` = "Sylvia Pate" WHERE `altContactID` = 28;
UPDATE `altContact` SET `relationship` = "Heather Berry" WHERE `altContactID` = 29;
UPDATE `altContact` SET `relationship` = "Audra Kinney" WHERE `altContactID` = 30;
UPDATE `altContact` SET `relationship` = "Lydia Mcdaniel" WHERE `altContactID` = 31;
UPDATE `altContact` SET `relationship` = "Phoebe Hines" WHERE `altContactID` = 32;
UPDATE `altContact` SET `relationship` = "Hiroko Carlson" WHERE `altContactID` = 33;
UPDATE `altContact` SET `relationship` = "Aileen Strong" WHERE `altContactID` = 34;
UPDATE `altContact` SET `relationship` = "Phyllis Cortez" WHERE `altContactID` = 35;
UPDATE `altContact` SET `relationship` = "Zelenia Stanley" WHERE `altContactID` = 36;
UPDATE `altContact` SET `relationship` = "Evangeline Castaneda" WHERE `altContactID` = 37;
UPDATE `altContact` SET `relationship` = "Erica Osborn" WHERE `altContactID` = 38;
UPDATE `altContact` SET `relationship` = "Jessica Sellers" WHERE `altContactID` = 39;
UPDATE `altContact` SET `relationship` = "Sybil Ferguson" WHERE `altContactID` = 40;
UPDATE `altContact` SET `relationship` = "Emerald Jennings" WHERE `altContactID` = 41;
UPDATE `altContact` SET `relationship` = "Audra Becker" WHERE `altContactID` = 42;
UPDATE `altContact` SET `relationship` = "Lareina Allen" WHERE `altContactID` = 43;
UPDATE `altContact` SET `relationship` = "Amethyst Hendricks" WHERE `altContactID` = 44;
UPDATE `altContact` SET `relationship` = "Oprah Carey" WHERE `altContactID` = 45;
UPDATE `altContact` SET `relationship` = "Yael Kane" WHERE `altContactID` = 46;
UPDATE `altContact` SET `relationship` = "Cleo Dillard" WHERE `altContactID` = 47;
UPDATE `altContact` SET `relationship` = "Emerald Briggs" WHERE `altContactID` = 48;
UPDATE `altContact` SET `relationship` = "Ivy Drake" WHERE `altContactID` = 49;
UPDATE `altContact` SET `relationship` = "Freya Clarke" WHERE `altContactID` = 50;
UPDATE `altContact` SET `relationship` = "Haviva Harvey" WHERE `altContactID` = 51;
UPDATE `altContact` SET `relationship` = "Cailin Whitney" WHERE `altContactID` = 52;
UPDATE `altContact` SET `relationship` = "Minerva Lane" WHERE `altContactID` = 53;
UPDATE `altContact` SET `relationship` = "Faith Livingston" WHERE `altContactID` = 54;
UPDATE `altContact` SET `relationship` = "Sybill Goodman" WHERE `altContactID` = 55;
UPDATE `altContact` SET `relationship` = "Althea Hampton" WHERE `altContactID` = 56;
UPDATE `altContact` SET `relationship` = "Ebony Allison" WHERE `altContactID` = 57;
UPDATE `altContact` SET `relationship` = "Charlotte Rose" WHERE `altContactID` = 58;
UPDATE `altContact` SET `relationship` = "Beverly Fields" WHERE `altContactID` = 59;
UPDATE `altContact` SET `relationship` = "Alfreda Mckenzie" WHERE `altContactID` = 60;
UPDATE `altContact` SET `relationship` = "Lesley Velasquez" WHERE `altContactID` = 61;
UPDATE `altContact` SET `relationship` = "Lana Glenn" WHERE `altContactID` = 62;
UPDATE `altContact` SET `relationship` = "Grace Cunningham" WHERE `altContactID` = 63;
UPDATE `altContact` SET `relationship` = "Dakota Witt" WHERE `altContactID` = 64;
UPDATE `altContact` SET `relationship` = "Lesley Chavez" WHERE `altContactID` = 65;
UPDATE `altContact` SET `relationship` = "Cecilia Orr" WHERE `altContactID` = 66;
UPDATE `altContact` SET `relationship` = "Blossom Sloan" WHERE `altContactID` = 67;
UPDATE `altContact` SET `relationship` = "Daryl Juarez" WHERE `altContactID` = 68;
UPDATE `altContact` SET `relationship` = "Inga Donaldson" WHERE `altContactID` = 69;
UPDATE `altContact` SET `relationship` = "Alika Bernard" WHERE `altContactID` = 70;
UPDATE `altContact` SET `relationship` = "Hedy Cain" WHERE `altContactID` = 71;
UPDATE `altContact` SET `relationship` = "Kaitlin Mcdaniel" WHERE `altContactID` = 72;
UPDATE `altContact` SET `relationship` = "Melyssa Chandler" WHERE `altContactID` = 73;
UPDATE `altContact` SET `relationship` = "Sloane Chambers" WHERE `altContactID` = 74;
UPDATE `altContact` SET `relationship` = "Nita Goodwin" WHERE `altContactID` = 75;
UPDATE `altContact` SET `relationship` = "Velma Wall" WHERE `altContactID` = 76;
UPDATE `altContact` SET `relationship` = "Rowan Dudley" WHERE `altContactID` = 77;
UPDATE `altContact` SET `relationship` = "Martena Downs" WHERE `altContactID` = 78;
UPDATE `altContact` SET `relationship` = "Miriam Wolf" WHERE `altContactID` = 79;
UPDATE `altContact` SET `relationship` = "Aphrodite Osborn" WHERE `altContactID` = 80;
UPDATE `altContact` SET `relationship` = "Candice Grant" WHERE `altContactID` = 81;
UPDATE `altContact` SET `relationship` = "Autumn Osborn" WHERE `altContactID` = 82;
UPDATE `altContact` SET `relationship` = "Rhoda Cox" WHERE `altContactID` = 83;
UPDATE `altContact` SET `relationship` = "Casey Rojas" WHERE `altContactID` = 84;
UPDATE `altContact` SET `relationship` = "Minerva Simpson" WHERE `altContactID` = 85;
UPDATE `altContact` SET `relationship` = "Melinda Hinton" WHERE `altContactID` = 86;
UPDATE `altContact` SET `relationship` = "Darryl Holloway" WHERE `altContactID` = 87;
UPDATE `altContact` SET `relationship` = "Melinda Woodward" WHERE `altContactID` = 88;
UPDATE `altContact` SET `relationship` = "Fatima Bass" WHERE `altContactID` = 89;
UPDATE `altContact` SET `relationship` = "Donna Rogers" WHERE `altContactID` = 90;
UPDATE `altContact` SET `relationship` = "Samantha Huffman" WHERE `altContactID` = 91;
UPDATE `altContact` SET `relationship` = "Naomi Lynch" WHERE `altContactID` = 92;
UPDATE `altContact` SET `relationship` = "Jana Levy" WHERE `altContactID` = 93;
UPDATE `altContact` SET `relationship` = "Stephanie Francis" WHERE `altContactID` = 94;
UPDATE `altContact` SET `relationship` = "Guinevere Santana" WHERE `altContactID` = 95;
UPDATE `altContact` SET `relationship` = "Jolene Kent" WHERE `altContactID` = 96;
UPDATE `altContact` SET `relationship` = "Stacy Wilkinson" WHERE `altContactID` = 97;
UPDATE `altContact` SET `relationship` = "Kaitlin Rose" WHERE `altContactID` = 98;
UPDATE `altContact` SET `relationship` = "Claire Sweeney" WHERE `altContactID` = 99;
UPDATE `altContact` SET `relationship` = "Cheyenne Blake" WHERE `altContactID` = 100;   

INSERT INTO `Worker` (`workerID`,`wFirstName`,`wLastName`,`wPhNumber`,`wEmail`,`wRole`,`clockIn`,`clockOut`) VALUES (1,"Lunea","Hanson","(04) 2810 0356","ut.lacus@erateget.com","lorem ac risus.","2019-09-07 05:51:50","2020-06-10 06:29:59"),(2,"Herrod","Lee","(03) 9908 2634","vehicula@nislQuisque.co.uk","sed dolor. Fusce","2021-08-18 11:20:07","2019-10-26 11:29:31"),(3,"Kai","Jensen","(02) 5025 7655","ornare.placerat.orci@tinciduntorci.org","odio. Nam interdum","2021-03-27 17:16:38","2019-10-29 11:21:36"),(4,"Baker","Patrick","(05) 0586 8466","Duis.risus@adui.co.uk","vestibulum. Mauris magna.","2019-12-24 16:47:03","2021-02-14 08:55:05"),(5,"Aaron","Dickson","(08) 7536 6331","senectus.et@magnaDuisdignissim.com","scelerisque scelerisque dui.","2020-08-15 11:56:23","2020-10-16 07:25:08"),(6,"Edan","Vinson","(08) 8137 9617","Donec@Nulla.ca","nibh vulputate mauris","2021-04-07 08:03:33","2020-11-25 20:32:28"),(7,"Joelle","Randolph","(07) 5942 2543","purus.in@gravida.ca","mi eleifend egestas.","2019-08-29 14:19:45","2020-05-02 03:54:34"),(8,"Orlando","Rodriquez","(09) 7610 6388","Sed.neque.Sed@Donecsollicitudin.net","congue, elit sed","2021-03-29 04:45:32","2019-09-02 01:50:36"),(9,"Shaine","Bishop","(03) 1331 6669","at.velit.Pellentesque@ridiculusmusDonec.ca","dui, in sodales","2020-10-06 15:44:32","2021-04-22 20:37:57"),(10,"Odysseus","Clay","(06) 8953 2482","parturient.montes@tincidunt.net","nibh. Quisque nonummy","2020-09-17 00:46:41","2021-01-20 14:41:11"),(11,"Quynn","Goff","(01) 2018 8029","nibh.vulputate.mauris@arcu.org","Vivamus euismod urna.","2020-04-28 18:42:42","2020-08-27 16:15:01"),(12,"Mason","Cardenas","(07) 9003 2381","odio.Etiam.ligula@loremluctus.com","aliquet, metus urna","2019-11-06 13:52:57","2020-11-23 07:33:04"),(13,"Colby","Moses","(01) 8552 5411","diam.at@at.co.uk","lobortis risus. In","2021-07-23 17:50:49","2020-01-17 22:11:14"),(14,"Gil","Barnett","(05) 0686 7554","augue@magnaaneque.edu","blandit congue. In","2020-12-10 00:36:47","2020-10-16 12:49:36"),(15,"Laura","Hodges","(05) 6573 4039","risus.Donec.egestas@etarcuimperdiet.ca","Integer in magna.","2020-07-23 07:29:42","2020-01-14 12:02:48"),(16,"Nathan","Clarke","(03) 0705 3610","a@famesacturpis.net","velit eget laoreet","2020-11-20 12:38:04","2020-11-15 15:26:34"),(17,"Brenna","Griffin","(04) 3836 1730","mi.pede@semsempererat.org","ante bibendum ullamcorper.","2021-02-28 14:58:17","2020-08-23 07:20:38"),(18,"Arsenio","Montoya","(06) 7313 9577","egestas.Sed.pharetra@Aliquam.ca","libero. Proin sed","2021-07-16 13:08:17","2020-01-04 00:44:35"),(19,"Natalie","Donovan","(08) 1497 7504","Sed.auctor.odio@facilisisegetipsum.co.uk","pede. Nunc sed","2020-04-20 18:37:59","2020-03-08 04:05:25"),(20,"Rahim","Morris","(04) 5249 9526","fringilla.ornare@malesuadaInteger.com","massa non ante","2021-05-12 12:44:42","2020-02-07 22:38:15"),(21,"Gloria","Noel","(01) 3519 2065","cubilia.Curae@fames.co.uk","risus. In mi","2020-08-25 02:00:07","2020-11-10 18:28:52"),(22,"Timon","Rosales","(05) 6594 8327","ipsum@Pellentesque.co.uk","Nullam nisl. Maecenas","2020-03-22 00:26:03","2019-10-12 12:29:24"),(23,"Gay","Bond","(02) 5613 9352","ligula@id.com","suscipit, est ac","2020-07-25 04:37:47","2021-02-19 23:57:43"),(24,"Ryan","Ferguson","(06) 7353 2334","Sed.nunc@commodoipsum.com","diam dictum sapien.","2021-03-26 13:22:56","2020-02-22 19:31:23"),(25,"Guy","Massey","(01) 8861 4924","orci.lacus.vestibulum@Loremipsum.net","a sollicitudin orci","2020-09-12 23:32:35","2021-05-14 22:29:43"),(26,"Charles","Guy","(04) 0185 6409","cursus.Nunc.mauris@velitPellentesqueultricies.co.uk","amet ante. Vivamus","2020-09-17 02:24:36","2020-03-26 05:03:08"),(27,"Leigh","Vasquez","(01) 4885 4884","ac@nonnisiAenean.ca","Donec felis orci,","2020-03-20 16:12:29","2019-09-02 10:16:32"),(28,"Barry","Petersen","(04) 6725 6481","nisl@convallisest.edu","dignissim. Maecenas ornare","2021-02-12 17:10:39","2021-06-21 18:07:10"),(29,"Reece","Norris","(01) 7046 0825","mauris.sagittis@accumsanneque.ca","vestibulum nec, euismod","2019-10-16 14:44:37","2020-07-22 21:00:38"),(30,"Carson","Patel","(01) 9594 6686","Fusce.aliquam.enim@mauriselitdictum.org","vestibulum lorem, sit","2021-01-02 10:13:37","2020-05-17 17:10:14"),(31,"Whilemina","Hall","(09) 2011 2077","augue.eu@cursus.com","sem semper erat,","2020-04-20 03:44:52","2020-02-17 17:55:06"),(32,"Alec","Guy","(01) 9632 4748","eget@Donecfringilla.edu","egestas lacinia. Sed","2021-06-06 01:32:49","2020-10-25 07:40:48"),(33,"Audrey","Hampton","(04) 3941 1259","Nullam@eleifendnecmalesuada.com","aliquet lobortis, nisi","2020-09-12 04:43:56","2021-02-03 06:48:25"),(34,"Leroy","Sherman","(07) 9978 6286","montes.nascetur.ridiculus@aliquameu.com","ac mi eleifend","2020-07-09 07:45:07","2019-12-11 18:43:42"),(35,"Robin","Marsh","(07) 6895 8676","non.vestibulum@fermentummetus.org","vulputate, posuere vulputate,","2020-10-29 22:45:49","2020-01-26 14:15:06"),(36,"Margaret","Rich","(09) 0040 4557","rhoncus@augueutlacus.com","molestie arcu. Sed","2021-01-20 03:01:30","2019-09-24 20:30:52"),(37,"Amanda","Dawson","(08) 9369 3301","eget@seddolorFusce.com","augue, eu tempor","2020-12-16 09:44:30","2021-05-03 15:49:05"),(38,"Burton","Cantu","(02) 9481 5646","laoreet.ipsum@temporarcu.co.uk","odio. Phasellus at","2020-11-13 12:27:23","2020-12-31 11:36:32"),(39,"Connor","England","(03) 6746 7294","Cras@nec.ca","risus. Quisque libero","2019-11-15 04:44:09","2020-09-06 06:35:35"),(40,"Lara","Wall","(04) 3873 8421","ac.sem@fringilla.edu","mi felis, adipiscing","2020-10-20 14:54:17","2020-01-14 19:29:28"),(41,"Camilla","Huffman","(02) 5222 1970","hendrerit.neque@gravidasagittisDuis.edu","Phasellus dolor elit,","2020-09-16 11:10:28","2019-09-14 23:10:22"),(42,"Price","Whitehead","(08) 0628 1774","neque.Sed.eget@nec.net","facilisis non, bibendum","2021-04-29 00:47:25","2021-05-18 18:26:54"),(43,"Regina","Mcconnell","(09) 2117 0096","molestie.tortor.nibh@est.ca","mi felis, adipiscing","2021-07-17 15:48:31","2020-12-13 23:51:48"),(44,"Hashim","Mcmahon","(09) 9504 4785","nisl@Nulla.edu","eleifend non, dapibus","2021-04-26 03:58:01","2020-09-18 12:47:25"),(45,"Wayne","Greene","(05) 6612 4879","lectus.a.sollicitudin@DonecegestasAliquam.org","mauris sagittis placerat.","2020-03-17 08:18:48","2020-03-03 16:02:52"),(46,"Gisela","Underwood","(01) 9963 7172","magna.Praesent@lorem.com","congue turpis. In","2019-10-28 07:33:56","2020-02-12 07:45:48"),(47,"Reuben","Sears","(08) 9191 3544","malesuada.ut@sitametultricies.co.uk","mauris id sapien.","2020-04-08 04:56:42","2021-02-16 20:00:58"),(48,"Lillith","Farrell","(03) 1811 1214","dolor.nonummy.ac@eget.com","sapien. Aenean massa.","2020-06-17 22:14:44","2020-06-02 13:30:18"),(49,"Bell","Kirkland","(09) 3938 2493","eu@diamSeddiam.net","ut mi. Duis","2021-06-16 03:05:14","2019-09-20 13:58:17"),(50,"Amity","Murphy","(08) 3778 7875","est.tempor@idliberoDonec.com","nunc sed libero.","2021-03-21 13:34:29","2019-12-10 16:41:30"),(51,"Lamar","Molina","(05) 5271 4991","luctus@pellentesque.edu","feugiat. Lorem ipsum","2021-02-10 02:05:18","2020-09-14 08:17:23"),(52,"Merritt","Mcdonald","(01) 7962 9645","placerat.velit.Quisque@Donecegestas.net","sagittis felis. Donec","2019-10-11 05:27:51","2019-09-05 21:59:02"),(53,"Leilani","Moore","(03) 6186 9164","eu.eros@QuisquevariusNam.net","et tristique pellentesque,","2020-10-30 23:21:34","2021-04-29 04:51:52"),(54,"Oliver","Norman","(04) 8511 7725","sit.amet@Proin.org","commodo hendrerit. Donec","2020-11-27 23:37:49","2019-11-26 10:18:46"),(55,"Cullen","England","(04) 0231 0037","magna.a@ametorciUt.org","Mauris quis turpis","2020-12-07 00:49:57","2021-06-16 06:14:11"),(56,"Nolan","Dorsey","(04) 3507 6603","Curae.Donec.tincidunt@metusfacilisis.ca","velit. Sed malesuada","2020-03-27 16:05:21","2020-09-06 08:00:32"),(57,"Meghan","Hubbard","(03) 6538 9527","et.nunc.Quisque@sedorci.net","quis lectus. Nullam","2021-01-26 05:32:51","2021-04-23 18:59:00"),(58,"Robert","Combs","(01) 7120 2030","pharetra.ut.pharetra@fermentumfermentum.com","sagittis felis. Donec","2021-03-14 07:12:26","2020-01-04 11:19:21"),(59,"Adara","Reeves","(01) 8486 6384","sem.eget.massa@euarcuMorbi.co.uk","sit amet nulla.","2020-07-06 06:26:35","2021-05-05 15:13:36"),(60,"Abel","Brock","(01) 7142 9309","orci.luctus@nislsem.co.uk","urna justo faucibus","2021-04-07 09:05:50","2020-11-25 16:56:32"),(61,"Ivan","Jenkins","(03) 5453 5257","blandit.viverra@intempuseu.ca","egestas a, scelerisque","2020-10-28 11:09:24","2019-09-12 00:20:45"),(62,"Renee","Wood","(06) 6652 7084","malesuada.fames@semegestas.net","aliquam eu, accumsan","2019-10-25 11:46:39","2020-12-04 08:44:03"),(63,"Chelsea","Dunlap","(09) 4871 8568","purus.in.molestie@faucibusid.edu","placerat velit. Quisque","2021-02-13 20:39:06","2020-07-24 06:03:08"),(64,"Chastity","Beasley","(08) 9474 1181","lectus@magnisdisparturient.edu","mauris elit, dictum","2021-04-24 22:08:36","2020-01-16 21:35:20"),(65,"Ramona","Morris","(02) 9359 6438","venenatis.vel.faucibus@lacinia.edu","magna et ipsum","2021-03-07 11:07:12","2020-08-05 06:47:56"),(66,"Linus","Stevens","(06) 1767 0087","ante.Maecenas.mi@lacusNulla.ca","hendrerit id, ante.","2020-03-06 05:44:01","2021-03-27 08:13:48"),(67,"Derek","Lowery","(08) 7110 1795","arcu.Vestibulum@facilisislorem.edu","at, iaculis quis,","2020-08-07 15:03:39","2021-01-24 00:05:48"),(68,"Risa","Aguilar","(03) 4449 5972","sollicitudin.commodo.ipsum@semper.net","ultricies sem magna","2020-08-28 18:05:56","2020-09-30 06:26:47"),(69,"Suki","Daniel","(02) 0837 3866","non@mollisPhaselluslibero.edu","turpis egestas. Aliquam","2019-11-28 13:31:18","2021-02-28 22:46:31"),(70,"Berk","Benton","(05) 7454 8633","id.libero@purussapien.org","dolor. Nulla semper","2020-06-08 00:00:41","2020-07-16 04:15:57"),(71,"Jack","Ford","(09) 2010 9438","malesuada.fringilla@torquent.edu","enim diam vel","2021-05-07 01:39:17","2020-10-13 01:57:17"),(72,"Gemma","Daniel","(02) 8836 2597","Phasellus@orci.edu","enim nisl elementum","2020-03-12 06:40:47","2021-07-30 00:38:24"),(73,"Dominique","Oneil","(06) 8638 7981","non.feugiat@semper.org","scelerisque, lorem ipsum","2020-10-24 01:13:42","2020-05-22 23:11:05"),(74,"Janna","Mendoza","(08) 2038 3864","lacus.Nulla.tincidunt@velit.co.uk","mollis. Duis sit","2019-08-24 09:04:44","2020-06-28 13:35:53"),(75,"Sybill","Rivas","(03) 4261 1061","pede.Cum@penatibus.ca","molestie tellus. Aenean","2021-06-29 05:35:46","2020-10-06 12:46:19"),(76,"Penelope","Rowe","(08) 5243 2996","Quisque.ac.libero@sem.org","eget varius ultrices,","2021-03-02 16:43:55","2019-10-16 09:08:06"),(77,"Lane","Patton","(06) 6794 1309","ultrices.posuere.cubilia@vulputateeuodio.ca","pede blandit congue.","2020-08-13 19:42:59","2020-08-15 06:59:28"),(78,"Kirby","Avila","(01) 0262 5720","dapibus.ligula.Aliquam@Crassedleo.org","Suspendisse sed dolor.","2021-02-17 12:43:47","2021-05-07 05:54:35"),(79,"Genevieve","Sanford","(05) 8602 8491","lectus.quis.massa@indolor.ca","urna et arcu","2021-08-09 02:51:13","2021-07-20 17:45:47"),(80,"Quinn","Leonard","(06) 0445 1206","sit.amet@malesuadafringilla.com","tellus faucibus leo,","2020-06-21 18:47:33","2021-02-11 20:49:54"),(81,"Jael","Franklin","(08) 7925 8189","vitae.semper.egestas@rutrum.co.uk","Aliquam tincidunt, nunc","2020-01-13 12:42:51","2021-08-16 13:07:26"),(82,"Evelyn","Buchanan","(03) 5778 6173","Nam.porttitor.scelerisque@aliquetProin.co.uk","cursus et, magna.","2019-12-22 23:13:45","2021-07-28 09:55:18"),(83,"Germaine","Singleton","(02) 6752 9613","in.cursus.et@duiquis.net","Nulla interdum. Curabitur","2020-12-31 04:08:36","2020-05-29 15:21:23"),(84,"Ishmael","Hooper","(07) 0503 5468","feugiat.metus.sit@Integereu.net","penatibus et magnis","2020-05-17 08:41:46","2021-01-24 04:24:10"),(85,"Denton","Nixon","(09) 7681 4462","a@egestasurna.edu","nibh dolor, nonummy","2021-01-14 23:21:55","2021-07-03 14:02:53"),(86,"Jordan","Knight","(08) 6516 2072","risus.Duis@atlacusQuisque.com","sed dui. Fusce","2021-07-21 18:19:54","2021-02-20 16:12:58"),(87,"Wade","Erickson","(08) 8839 2180","ut@tinciduntDonecvitae.org","cursus purus. Nullam","2020-04-13 05:43:31","2021-03-20 03:00:32"),(88,"Violet","Marshall","(04) 1071 6915","Curabitur@velitSed.com","mollis nec, cursus","2020-04-06 05:43:51","2019-12-26 16:54:56"),(89,"Piper","Goodman","(08) 9118 7581","tristique.ac@malesuadaut.co.uk","ullamcorper, velit in","2019-09-05 04:26:15","2021-08-07 21:02:54"),(90,"Quinlan","Adkins","(02) 8287 5983","inceptos.hymenaeos.Mauris@lacus.org","fringilla mi lacinia","2021-04-25 16:29:45","2020-07-30 10:16:35"),(91,"Yeo","Park","(07) 5065 2127","nunc@luctuset.ca","gravida molestie arcu.","2020-10-31 18:17:28","2021-04-18 18:37:51"),(92,"Ian","Callahan","(09) 3110 8653","Fusce.diam@Mauris.com","blandit at, nisi.","2020-05-03 19:06:53","2020-04-05 10:49:51"),(93,"Audra","Irwin","(09) 0608 5888","pharetra.sed.hendrerit@luctus.ca","Nunc laoreet lectus","2020-03-18 17:31:50","2020-02-26 03:05:11"),(94,"Roary","Glenn","(01) 1929 0718","semper@Crasegetnisi.org","ac orci. Ut","2020-08-31 17:50:46","2020-12-25 14:05:03"),(95,"Carol","Franco","(09) 2106 8004","non.justo@Nullaaliquet.com","sagittis semper. Nam","2020-11-02 16:00:10","2019-12-27 19:26:22"),(96,"Rowan","Brock","(03) 4827 2333","Suspendisse.tristique@necmalesuadaut.org","porta elit, a","2019-10-09 04:09:53","2020-07-06 08:35:58"),(97,"Elaine","Sweeney","(09) 8607 9374","neque@vestibulum.org","sollicitudin a, malesuada","2021-07-15 01:49:41","2020-08-01 21:56:52"),(98,"Haley","Hunter","(04) 7690 9680","justo@vel.com","enim commodo hendrerit.","2021-07-19 18:37:47","2021-06-13 06:02:46"),(99,"Kim","Wallace","(02) 9601 8274","sed.sapien.Nunc@nibh.org","odio. Aliquam vulputate","2021-06-19 13:59:42","2019-09-17 04:46:10"),(100,"Hamish","Donovan","(08) 9833 7210","Integer.mollis.Integer@euismodin.com","ultrices sit amet,","2020-07-31 00:28:52","2021-05-10 20:51:45");



-- tests 

select * from altContact; -- this will check that the relationship column from altContactr table has been filled with data
select * from Worker order by wRole; -- this will check that the table has been filled with data

-- important queries 

select wEmail, wPhNumber, wRole, concat(wFirstName, ' ',wLastName) as fullname from Worker where workerID = 25;

select concat(wFirstName, ' ',wLastName) as fullname from Worker where clockIn = '2020-08-15 11:56:23';

select * from Worker where wRole like 'egestas%';







    
