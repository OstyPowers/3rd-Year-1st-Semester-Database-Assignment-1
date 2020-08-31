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
    
create table Contact (
	contactID int primary key not null,
    contactTime datetime not null,
    notes varchar(500),
    patientID int(11) not null,
    altContactID int(11) default null,
    workerID int(11) not null,
    foreign key (patientID) references Patient (patientID),
    foreign key (altContactID) references altContact (altContactID),
    foreign key (workerID) references Worker (workerID)
    ) engine = InnoDB;
    
create table Export (
	companyID int primary key not null,
    companyName varchar(20) not null,
    companyAddress varchar(60) not null,
    companyEmail varchar(30) not null,
    companyPhNumber varchar(20) not null,
    contactID int(11) not null,
    foreign key (contactID) references Contact (contactID)
    ) engine = InnoDB;
    
    
INSERT INTO `Contact` (`contactID`,`contactTime`,`notes`,`patientID`,`altContactID`,`workerID`) VALUES (1,"2020-06-29 15:43:37","Duis sit amet diam eu dolor egestas rhoncus. Proin nisl sem, consequat nec, mollis vitae, posuere at, velit. Cras lorem",1,1,1),(2,"2020-11-30 07:42:47","magna tellus faucibus leo, in lobortis tellus justo",2,2,2),(3,"2020-12-07 14:28:49","semper. Nam tempor diam",3,3,3),(4,"2021-02-25 20:51:00","sit amet ante. Vivamus non lorem vitae odio sagittis semper. Nam",4,4,4),(5,"2020-01-06 12:01:18","neque sed sem egestas blandit. Nam nulla magna, malesuada vel, convallis in, cursus et, eros. Proin ultrices.",5,5,5),(6,"2021-06-07 19:43:07","ligula. Donec luctus aliquet odio. Etiam ligula tortor, dictum eu, placerat eget, venenatis a, magna. Lorem",6,6,6),(7,"2020-10-01 07:46:02","Aliquam vulputate ullamcorper magna. Sed",7,7,7),(8,"2020-01-29 13:29:37","nisi dictum augue malesuada malesuada. Integer id magna et ipsum cursus vestibulum. Mauris magna.",8,8,8),(9,"2021-06-17 13:48:06","Duis risus odio, auctor vitae, aliquet nec, imperdiet nec, leo. Morbi neque tellus, imperdiet non,",9,9,9),(10,"2019-11-07 13:58:55","ac mattis ornare, lectus ante dictum mi, ac mattis velit justo",10,10,10),(11,"2019-09-12 00:05:29","eu, eleifend nec, malesuada ut, sem. Nulla interdum.",11,11,11),(12,"2021-01-02 05:54:15","malesuada malesuada. Integer id magna et ipsum cursus vestibulum. Mauris magna. Duis dignissim tempor arcu. Vestibulum ut eros non enim",12,12,12),(13,"2020-10-21 23:33:17","libero",13,13,13),(14,"2020-04-19 09:05:32","risus. Donec egestas. Aliquam nec enim. Nunc ut erat. Sed nunc",14,14,14),(15,"2020-12-30 19:09:12","cubilia Curae; Phasellus ornare. Fusce mollis. Duis sit amet diam eu dolor egestas rhoncus. Proin nisl",15,15,15),(16,"2020-03-04 02:21:16","pellentesque eget, dictum placerat, augue. Sed molestie. Sed id risus quis diam luctus lobortis. Class",16,16,16),(17,"2019-11-23 21:11:41","Aenean gravida nunc sed pede. Cum sociis natoque penatibus et magnis dis parturient montes,",17,17,17),(18,"2020-10-06 13:46:21","in, tempus eu, ligula. Aenean euismod mauris eu elit. Nulla facilisi. Sed neque. Sed eget",18,18,18),(19,"2021-06-06 17:04:46","tellus justo sit amet",19,19,19),(20,"2020-03-24 13:40:55","velit. Sed malesuada augue ut lacus. Nulla tincidunt, neque vitae semper egestas, urna justo faucibus lectus, a sollicitudin orci",20,20,20),(21,"2020-09-15 06:01:16","erat neque",21,21,21),(22,"2019-09-03 21:57:28","magna. Cras convallis convallis dolor. Quisque tincidunt pede ac urna. Ut tincidunt vehicula risus. Nulla eget",22,22,22),(23,"2021-01-23 03:52:18","Vivamus nisi. Mauris nulla.",23,23,23),(24,"2021-07-07 10:07:52","pellentesque eget, dictum placerat, augue. Sed molestie. Sed id risus",24,24,24),(25,"2020-11-30 16:48:44","tellus. Suspendisse sed",25,25,25),(26,"2020-05-30 04:12:57","cursus. Integer mollis. Integer tincidunt aliquam arcu. Aliquam ultrices",26,26,26),(27,"2020-12-18 10:52:01","ligula consectetuer rhoncus. Nullam velit",27,27,27),(28,"2020-06-05 04:20:31","varius. Nam porttitor scelerisque neque. Nullam nisl. Maecenas malesuada fringilla est. Mauris",28,28,28),(29,"2020-05-26 02:44:31","porttitor tellus non magna. Nam ligula elit, pretium et, rutrum non, hendrerit id, ante. Nunc",29,29,29),(30,"2021-02-24 08:30:50","luctus ut, pellentesque eget, dictum placerat, augue. Sed molestie. Sed id risus quis diam luctus lobortis.",30,30,30),(31,"2020-07-28 00:44:44","eros. Proin ultrices. Duis volutpat nunc sit amet metus. Aliquam erat volutpat. Nulla facilisis.",31,31,31),(32,"2020-12-22 10:56:50","nascetur ridiculus mus. Donec dignissim magna a tortor.",32,32,32),(33,"2021-03-05 00:26:05","pede et risus. Quisque libero lacus, varius et, euismod et, commodo at, libero. Morbi accumsan",33,33,33),(34,"2020-03-25 20:03:23","massa. Suspendisse eleifend. Cras sed leo. Cras vehicula aliquet libero. Integer in magna. Phasellus dolor",34,34,34),(35,"2021-04-08 23:09:36","ligula. Nullam feugiat placerat velit. Quisque varius. Nam porttitor scelerisque neque. Nullam nisl. Maecenas malesuada fringilla est. Mauris eu turpis.",35,35,35),(36,"2020-03-06 06:48:14","aliquet, sem ut cursus luctus, ipsum leo elementum",36,36,36),(37,"2020-02-01 04:29:33","erat vitae risus. Duis a mi",37,37,37),(38,"2021-08-01 23:16:30","sodales purus, in molestie",38,38,38),(39,"2020-11-17 00:49:48","et magnis dis parturient montes, nascetur ridiculus mus. Proin vel",39,39,39),(40,"2021-02-23 14:04:46","mollis. Integer tincidunt aliquam arcu. Aliquam ultrices",40,40,40),(41,"2020-01-19 01:28:27","consequat purus. Maecenas libero est, congue a,",41,41,41),(42,"2021-02-06 06:06:33","faucibus orci luctus et ultrices posuere",42,42,42),(43,"2020-01-14 23:32:38","nibh. Aliquam ornare, libero at auctor ullamcorper, nisl arcu",43,43,43),(44,"2021-02-11 17:29:39","Pellentesque habitant morbi tristique senectus et netus et",44,44,44),(45,"2021-01-28 02:15:43","velit dui, semper et, lacinia vitae, sodales at,",45,45,45),(46,"2020-05-05 08:03:26","pharetra, felis eget varius ultrices, mauris ipsum porta elit, a feugiat tellus lorem eu metus.",46,46,46),(47,"2020-06-27 15:27:09","commodo tincidunt nibh. Phasellus nulla. Integer vulputate, risus a ultricies adipiscing, enim mi tempor lorem, eget mollis lectus",47,47,47),(48,"2020-06-02 11:50:03","dui augue eu tellus.",48,48,48),(49,"2019-09-13 18:20:05","eu eros. Nam consequat dolor vitae dolor. Donec fringilla. Donec feugiat metus sit amet ante. Vivamus non lorem vitae odio",49,49,49),(50,"2021-05-27 08:39:02","non lorem vitae odio sagittis semper. Nam tempor",50,50,50),(51,"2020-08-14 22:40:29","lobortis tellus justo sit amet nulla.",51,51,51),(52,"2020-11-07 00:17:05","erat neque non quam. Pellentesque habitant morbi tristique senectus et netus et malesuada",52,52,52),(53,"2019-10-12 02:35:45","bibendum. Donec felis orci, adipiscing non, luctus sit amet, faucibus ut, nulla. Cras eu tellus",53,53,53),(54,"2021-02-12 05:19:39","neque pellentesque massa lobortis ultrices. Vivamus rhoncus. Donec est. Nunc",54,54,54),(55,"2021-01-02 07:15:39","adipiscing, enim mi tempor lorem, eget mollis lectus pede et risus. Quisque libero",55,55,55),(56,"2020-05-11 19:04:20","orci. Donec nibh. Quisque nonummy ipsum non arcu. Vivamus",56,56,56),(57,"2020-05-25 17:08:18","molestie orci tincidunt",57,57,57),(58,"2021-03-26 03:23:34","augue ac ipsum. Phasellus vitae mauris sit amet lorem semper auctor. Mauris vel",58,58,58),(59,"2021-05-10 00:38:19","auctor vitae, aliquet nec, imperdiet nec, leo. Morbi neque tellus, imperdiet non, vestibulum nec, euismod in,",59,59,59),(60,"2021-06-15 08:57:27","in, hendrerit consectetuer, cursus",60,60,60),(61,"2020-01-09 13:22:51","in consectetuer ipsum nunc id",61,61,61),(62,"2020-02-03 05:37:51","ante. Vivamus non lorem vitae odio sagittis semper. Nam tempor diam dictum sapien.",62,62,62),(63,"2021-08-11 04:55:13","Nulla tempor augue ac ipsum. Phasellus vitae mauris sit amet lorem semper",63,63,63),(64,"2021-05-06 08:42:24","et netus et malesuada fames ac turpis",64,64,64),(65,"2020-06-04 16:33:36","interdum feugiat. Sed nec metus facilisis lorem tristique aliquet. Phasellus",65,65,65),(66,"2020-11-30 04:49:10","justo faucibus lectus, a sollicitudin orci sem eget massa. Suspendisse eleifend. Cras sed",66,66,66),(67,"2021-08-22 09:52:53","ante. Nunc mauris sapien, cursus in, hendrerit consectetuer, cursus et, magna. Praesent",67,67,67),(68,"2021-08-29 13:08:36","elit pede,",68,68,68),(69,"2021-07-04 07:45:35","habitant morbi tristique senectus et netus et malesuada",69,69,69),(70,"2019-12-23 15:58:04","Mauris vestibulum, neque sed dictum eleifend, nunc risus varius orci, in consequat",70,70,70),(71,"2020-12-05 06:33:42","pede. Praesent eu dui. Cum sociis natoque penatibus et magnis dis parturient",71,71,71),(72,"2020-03-04 15:46:32","orci. Ut sagittis",72,72,72),(73,"2020-08-10 03:10:36","sed, sapien. Nunc pulvinar arcu et pede. Nunc sed orci lobortis augue scelerisque mollis. Phasellus",73,73,73),(74,"2021-06-30 00:22:08","dui lectus rutrum urna, nec luctus felis purus ac tellus. Suspendisse sed dolor. Fusce mi lorem, vehicula et, rutrum eu,",74,74,74),(75,"2020-09-27 09:46:24","ut, pellentesque eget, dictum placerat, augue. Sed molestie. Sed id risus quis diam luctus lobortis.",75,75,75),(76,"2021-04-24 01:09:56","lectus rutrum urna, nec luctus felis purus ac tellus. Suspendisse sed dolor.",76,76,76),(77,"2020-08-16 11:45:39","risus. Duis a mi fringilla mi lacinia mattis.",77,77,77),(78,"2021-04-06 12:10:12","malesuada id, erat. Etiam vestibulum massa rutrum magna. Cras convallis convallis dolor. Quisque tincidunt pede",78,78,78),(79,"2021-03-16 21:02:50","Donec luctus aliquet odio. Etiam ligula tortor, dictum eu, placerat",79,79,79),(80,"2020-05-07 18:59:48","Proin vel arcu eu odio tristique pharetra. Quisque ac libero nec ligula consectetuer rhoncus. Nullam velit dui, semper",80,80,80),(81,"2020-06-25 19:55:03","sodales. Mauris blandit enim consequat purus. Maecenas libero est, congue a, aliquet vel, vulputate eu, odio. Phasellus at augue",81,81,81),(82,"2020-09-13 06:23:42","Quisque ac libero",82,82,82),(83,"2021-07-07 18:17:17","mauris id sapien. Cras dolor dolor, tempus non, lacinia at, iaculis quis, pede. Praesent eu dui. Cum sociis",83,83,83),(84,"2020-07-29 03:44:14","dictum augue malesuada malesuada. Integer id magna",84,84,84),(85,"2021-02-04 08:31:51","adipiscing elit. Aliquam auctor, velit eget laoreet posuere, enim nisl elementum purus, accumsan interdum libero dui",85,85,85),(86,"2020-04-14 04:49:40","Nulla tempor augue ac ipsum.",86,86,86),(87,"2020-07-26 13:12:38","urna. Nullam lobortis quam a felis ullamcorper",87,87,87),(88,"2020-04-20 10:42:20","mi. Duis risus odio, auctor vitae, aliquet nec, imperdiet nec, leo. Morbi neque tellus, imperdiet non, vestibulum nec,",88,88,88),(89,"2020-02-17 02:14:56","quam a felis ullamcorper viverra. Maecenas iaculis aliquet diam. Sed diam lorem,",89,89,89),(90,"2020-07-05 19:25:31","malesuada fames ac turpis egestas. Fusce aliquet magna a",90,90,90),(91,"2020-04-04 19:24:55","vitae risus. Duis a mi fringilla mi lacinia mattis. Integer eu lacus. Quisque imperdiet, erat nonummy ultricies ornare, elit elit",91,91,91),(92,"2020-02-03 02:19:16","elit. Aliquam auctor, velit eget laoreet posuere, enim nisl elementum purus, accumsan interdum libero dui nec",92,92,92),(93,"2019-11-25 05:35:45","Phasellus in felis. Nulla tempor augue ac ipsum.",93,93,93),(94,"2020-12-21 08:12:17","pede nec ante blandit viverra. Donec tempus, lorem fringilla ornare placerat, orci lacus vestibulum lorem, sit amet ultricies sem",94,94,94),(95,"2020-01-14 17:29:32","nonummy ipsum non arcu. Vivamus sit amet risus. Donec egestas. Aliquam nec enim.",95,95,95),(96,"2020-04-26 21:52:48","ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia",96,96,96),(97,"2020-06-17 07:10:54","eu tempor erat neque non quam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis",97,97,97),(98,"2020-12-03 20:50:08","lectus ante dictum mi, ac mattis",98,98,98),(99,"2020-11-25 00:24:43","penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin",99,99,99),(100,"2021-06-26 00:24:51","rutrum lorem ac risus. Morbi metus. Vivamus euismod urna.",100,100,100);  
INSERT INTO `Export` (`companyID`,`companyName`,`companyAddress`,`companyEmail`,`companyPhNumber`,`contactID`) VALUES (1,"Penatibus Foundation","5021 Odio St.","facilisis.lorem.tristique@Etiamlaoreet.co.uk","(02) 0812 9964",1),(2,"Vestibulum Mauris Limited","P.O. Box 736, 7343 Aliquet, Street","in@nuncnullavulputate.com","(06) 7129 1910",2),(3,"Sapien Inc.","P.O. Box 354, 4669 Purus Rd.","dolor@arcuSed.ca","(03) 5326 3636",3),(4,"Vivamus Nibh LLP","4694 Metus St.","mauris@dolor.org","(08) 8153 7225",4),(5,"Aliquam Nisl Nulla PC","Ap #984-2323 Fames Av.","vulputate.eu.odio@Uttincidunt.edu","(02) 5599 8669",5),(6,"Euismod Associates","P.O. Box 743, 672 Vulputate St.","gravida.mauris@velitAliquam.org","(08) 0681 7031",6),(7,"Quis Diam LLP","115-1068 Eget St.","egestas.a.dui@Praesenteunulla.co.uk","(02) 3241 8264",7),(8,"Suspendisse Aliquet Ltd","Ap #605-5011 Mi. Road","massa@molestie.org","(08) 7581 1558",8),(9,"Diam Eu Dolor Industries","P.O. Box 522, 5265 A Ave","volutpat.ornare.facilisis@pharetranibhAliquam.net","(04) 0887 1583",9),(10,"Ipsum Corporation","P.O. Box 429, 2216 Nec Rd.","bibendum@tempusscelerisque.net","(02) 2775 4715",10),(11,"Neque Foundation","P.O. Box 499, 3908 Est Street","a.malesuada@idrisusquis.co.uk","(09) 5871 3439",11),(12,"Libero At Auctor Foundation","Ap #452-3674 Amet, Avenue","felis.purus@rhoncus.co.uk","(03) 4546 5581",12),(13,"Gravida Aliquam Company","802 Est Rd.","Pellentesque@sem.ca","(05) 9313 8145",13),(14,"Vitae Associates","P.O. Box 881, 2622 Ac St.","pellentesque.tellus.sem@elitpedemalesuada.net","(09) 7504 5211",14),(15,"Hendrerit Donec Foundation","Ap #176-8357 Cras Rd.","quam.quis@utsemNulla.net","(08) 0217 3140",15),(16,"Nascetur Ridiculus Incorporated","6838 Commodo Street","convallis@magna.net","(06) 3227 9110",16),(17,"Mauris Blandit Incorporated","Ap #486-3520 Eu, St.","velit.justo.nec@eleifendnunc.net","(05) 6457 5724",17),(18,"Ut Nec Consulting","332-2404 Aliquam Av.","sapien.molestie@molestiedapibusligula.edu","(09) 9007 7476",18),(19,"Cursus Nunc Mauris Company","3763 Lorem, Road","Sed.nunc@Maecenasmi.org","(07) 2449 4253",19),(20,"Fringilla Purus Corporation","817-1513 Vitae Avenue","eu@atpedeCras.edu","(07) 7611 4190",20),(21,"Metus Consulting","628-2106 Sed Street","hendrerit@imperdietnecleo.com","(04) 2706 1842",21),(22,"Sit Amet Corporation","3794 Id St.","velit.Cras.lorem@nisi.com","(09) 5415 4638",22),(23,"Tristique Ltd","4708 Dolor. Rd.","ornare.libero@augue.co.uk","(06) 2530 2749",23),(24,"Fringilla Ornare Placerat PC","4150 Augue Ave","Donec.egestas@Nullamscelerisque.com","(05) 1505 5940",24),(25,"Vel Sapien LLC","Ap #479-2849 Proin Rd.","tortor.dictum.eu@Etiamligulatortor.org","(08) 8523 3357",25),(26,"Ut Nec Urna Consulting","Ap #778-7390 Aliquet, St.","erat@ultrices.org","(02) 5194 7035",26),(27,"Facilisis Lorem Corporation","Ap #272-2754 Orci, Avenue","Phasellus.dolor@faucibusleoin.edu","(08) 0457 8140",27),(28,"Nibh Vulputate Corporation","Ap #691-422 Tempor St.","Sed@purussapiengravida.com","(02) 0745 5912",28),(29,"Lectus Corp.","3328 Lacinia Street","Nulla.dignissim.Maecenas@Integer.ca","(08) 3601 4301",29),(30,"Vel Vulputate Eu Industries","Ap #250-4208 Duis Ave","Nulla@nasceturridiculusmus.com","(03) 2882 3968",30),(31,"Dolor Tempus Corp.","815-6662 Egestas Av.","dapibus@ipsumprimis.com","(02) 9713 5271",31),(32,"Et Magnis PC","Ap #811-5207 Tincidunt Ave","natoque.penatibus@odioapurus.ca","(02) 5464 8297",32),(33,"Ornare Industries","460 Elit, Road","arcu.Sed.et@Aliquamvulputate.edu","(06) 8721 4673",33),(34,"Id Blandit Company","6710 Consectetuer St.","gravida.sit.amet@non.ca","(03) 6792 3346",34),(35,"Enim LLC","P.O. Box 593, 1892 Mauris Rd.","mauris.sagittis.placerat@arcuVestibulumante.org","(04) 2462 3552",35),(36,"Fusce Aliquam Associates","869-507 Pede. Av.","Suspendisse@placerat.com","(04) 9575 7258",36),(37,"Ipsum Curabitur PC","Ap #219-7499 Imperdiet Rd.","id.ante.dictum@risusodio.org","(03) 9120 4438",37),(38,"Ut Pellentesque Limited","839-5845 In Street","eu.enim.Etiam@a.ca","(03) 0833 5973",38),(39,"Eu Accumsan Sed Ltd","Ap #487-4766 Imperdiet, St.","lorem.Donec.elementum@Etiamimperdietdictum.com","(08) 3108 6624",39),(40,"Dui Corp.","Ap #985-4022 Nullam Av.","dis.parturient.montes@hymenaeosMauris.net","(05) 0237 9939",40),(41,"Diam Dictum Corporation","5493 Neque Rd.","congue.elit@In.net","(04) 7188 0697",41),(42,"Adipiscing Elit Institute","2106 Aliquam Rd.","posuere.enim.nisl@ametconsectetuer.com","(06) 3090 2366",42),(43,"Luctus Corp.","Ap #413-581 Odio Road","arcu.Vestibulum@eu.org","(08) 2887 4921",43),(44,"Enim Sit Company","5047 Nec, Rd.","neque.tellus@auctorvitaealiquet.org","(02) 6240 7925",44),(45,"Hendrerit Consectetuer Cursus Corporation","934-5282 A, Road","enim.Etiam.imperdiet@risus.net","(01) 5315 3374",45),(46,"Luctus Ipsum Leo Institute","Ap #846-5535 Ullamcorper Street","semper@tellusfaucibus.net","(06) 0760 2007",46),(47,"Volutpat Nulla Corporation","Ap #402-336 Quis Avenue","pharetra.nibh@dictumauguemalesuada.net","(08) 6616 0749",47),(48,"Ipsum Associates","P.O. Box 500, 439 Morbi Avenue","mus.Donec.dignissim@lacinia.net","(02) 0505 1415",48),(49,"Euismod Et LLC","575-1369 Sociis Road","turpis.egestas@nequeNullamnisl.co.uk","(04) 5322 7029",49),(50,"Imperdiet LLC","P.O. Box 170, 2777 Cum Avenue","dui.quis@urna.com","(08) 6218 5893",50),(51,"Sociis Corporation","112-8852 Non, Av.","Vivamus.rhoncus@eu.edu","(09) 3945 3741",51),(52,"Cursus Luctus Institute","1525 Neque Ave","bibendum.ullamcorper@etrutrumeu.com","(02) 8209 1760",52),(53,"Vulputate Lacus Cras Inc.","P.O. Box 497, 2929 In Street","vel@necante.edu","(08) 6977 0657",53),(54,"In Nec LLC","P.O. Box 893, 8380 Mauris, Av.","a.tortor@a.ca","(03) 1161 3906",54),(55,"Auctor Consulting","651-8468 Posuere Rd.","elementum.sem@amet.ca","(01) 6780 6173",55),(56,"Erat Eget LLC","2797 Donec Rd.","eu@augue.net","(07) 8303 3635",56),(57,"Penatibus Et Magnis Incorporated","Ap #953-1835 Erat. St.","Maecenas.mi.felis@mi.co.uk","(08) 5961 2295",57),(58,"Eget Dictum Inc.","4129 Blandit St.","tellus.non@risusDonecegestas.com","(09) 5036 6864",58),(59,"Mus Donec Dignissim Inc.","3080 Ut Rd.","enim.Curabitur.massa@Integervulputate.co.uk","(08) 6097 9841",59),(60,"Magna Sed Dui LLP","911-7573 Enim, Av.","leo@Integertinciduntaliquam.edu","(06) 9127 4950",60),(61,"Purus Associates","P.O. Box 995, 7398 Neque Ave","senectus.et@euismodmauris.org","(03) 3629 5178",61),(62,"Dictum Proin Foundation","394-1652 Habitant Street","nisi.dictum@Proin.net","(02) 5995 2451",62),(63,"Euismod Corporation","Ap #950-2234 Aliquet, Rd.","Nunc.laoreet@Duis.net","(02) 9872 7019",63),(64,"Eu Arcu Ltd","702-1424 Egestas. Rd.","amet.consectetuer.adipiscing@Quisqueporttitor.net","(06) 0313 2412",64),(65,"Ornare Placerat Orci PC","P.O. Box 852, 3203 Eget, Rd.","Nam.ac.nulla@Integermollis.co.uk","(08) 1173 6598",65),(66,"Suspendisse Sed Dolor Company","874-4050 Ultrices St.","lacinia.mattis.Integer@nuncrisus.ca","(03) 6172 5179",66),(67,"Nec Enim PC","2164 Velit St.","sit.amet.dapibus@diamdictumsapien.net","(04) 1655 7484",67),(68,"In Condimentum Donec Limited","P.O. Box 126, 2627 Proin St.","turpis.non@convallisest.com","(02) 6895 2180",68),(69,"Ipsum Cursus Vestibulum Institute","3428 Eu Ave","Cum@ipsumPhasellusvitae.co.uk","(04) 6699 4438",69),(70,"Vulputate Eu LLC","P.O. Box 854, 7738 Aliquam Avenue","blandit@ante.edu","(07) 8583 5934",70),(71,"Eu Eleifend Institute","5455 Sit Ave","libero.dui@viverraDonectempus.com","(08) 5706 1583",71),(72,"Ante Iaculis Nec Inc.","Ap #442-5733 Vulputate Avenue","erat.vitae@tristiqueac.com","(07) 2441 4010",72),(73,"Justo PC","6326 Vitae Rd.","molestie.tellus.Aenean@semper.ca","(09) 0352 5401",73),(74,"Non Vestibulum Nec LLC","P.O. Box 714, 7684 At Rd.","Nunc@parturientmontes.ca","(01) 5706 1881",74),(75,"Parturient LLC","2202 Ac St.","turpis.Nulla@Nulla.co.uk","(02) 3931 4022",75),(76,"Rhoncus Proin Limited","867-3346 Enim, Street","tristique@Nuncacsem.co.uk","(05) 6944 5264",76),(77,"At LLP","P.O. Box 910, 5732 Sed Road","sem.molestie.sodales@non.co.uk","(03) 9817 4736",77),(78,"Ut Tincidunt Orci PC","468-5638 Phasellus Rd.","sed.est.Nunc@Duisami.com","(04) 5811 1382",78),(79,"Curabitur Sed Tortor Ltd","4638 Ac St.","ut@idmagna.ca","(03) 9272 1593",79),(80,"Maecenas Libero Est Corporation","P.O. Box 737, 9165 Ante, Ave","Fusce.fermentum.fermentum@maurisid.com","(07) 4415 2964",80),(81,"Ligula Tortor Dictum LLC","666 Quisque St.","lacus.Nulla.tincidunt@arcu.ca","(02) 4414 2407",81),(82,"Ut Ltd","Ap #815-647 Eu Av.","ultrices.Duis.volutpat@felisDonec.org","(03) 7140 6962",82),(83,"A Aliquet Company","5091 Etiam Road","mi.eleifend.egestas@faucibus.ca","(03) 8690 3580",83),(84,"Pede Cum Institute","4365 Risus. Ave","Quisque.varius@mollisPhaselluslibero.co.uk","(07) 3896 4048",84),(85,"Quis Tristique Ac Associates","5353 Pellentesque St.","pulvinar@rhoncusProinnisl.co.uk","(03) 3964 8996",85),(86,"Ante Associates","Ap #799-3455 Felis Rd.","vel@egestas.com","(07) 5320 6692",86),(87,"Elit Pede Foundation","239-5762 Id, Road","Aenean@maurisblanditmattis.edu","(08) 9695 4889",87),(88,"Sapien Consulting","3891 Nibh. Avenue","luctus@Cras.edu","(06) 9954 9172",88),(89,"Ligula Nullam Feugiat Incorporated","Ap #699-9579 Donec Street","amet.consectetuer@malesuadafamesac.ca","(01) 5845 3185",89),(90,"Enim Diam Vel PC","2981 Velit. Rd.","augue.id@duinec.ca","(08) 5590 3039",90),(91,"Sit Amet Corporation","544-3791 Mollis Ave","felis@lorem.net","(08) 5149 1975",91),(92,"Suspendisse Non Leo Ltd","8501 Vel Road","Sed.eu.nibh@dictum.co.uk","(03) 4734 1872",92),(93,"Libero Proin Sed Foundation","605-4246 Amet, Street","tristique.pharetra@tempor.edu","(05) 7023 8519",93),(94,"Nulla PC","P.O. Box 804, 1681 Et, Rd.","Nullam.nisl@Quisquenonummyipsum.co.uk","(06) 4467 6043",94),(95,"Mollis Non Associates","P.O. Box 258, 3011 Consequat Avenue","nisl.Nulla.eu@Duisat.co.uk","(06) 9058 6923",95),(96,"Ac Metus LLC","2391 Duis Ave","id.ante@amet.net","(07) 5514 6689",96),(97,"Enim Gravida Foundation","827 Orci Av.","a@vulputatedui.com","(02) 0333 6199",97),(98,"Nulla Facilisis Suspendisse Corp.","P.O. Box 395, 5387 Quam. Ave","Aliquam@necleo.co.uk","(01) 5757 5296",98),(99,"Mauris Eu Elit LLP","Ap #768-3611 Lorem. Rd.","Donec.tincidunt.Donec@sed.org","(05) 8656 5158",99),(100,"Sociis PC","9478 Elit St.","ornare.lectus@ultricesposuere.com","(08) 3129 0901",100);

-- tests 

select * from Contact; -- this will check that the table has been filled with data
select * from Export; -- this will check that the table has been filled with data

-- important queries 

select Worker.workerID, concat(wFirstName, ' ',wLastName) as fullname from Worker, Contact
where contactTime  between clockIn and clockOut and contactID = 10; -- selecting all the workers that were available when a call(contact) was made

select Contact.workerID, notes, contactTime, concat(pFirstName, ' ',pLastName) as fullname, concat(wFirstName, ' ',wLastName)
as workername from Contact, Patient, Worker where Patient.patientID = Contact.patientID and Worker.WorkerID = Contact.workerID and contactID = 5; -- selecting the worker details and notes based on a certain call(contact) 
 
select companyName, companyEmail, notes, concat(pFirstName, ' ',pLastName) as patient_fullname 
from Export, Contact, Patient where Patient.patientID = Contact.patientID and Contact.contactID = Export.contactID and Export.contactID = 11; -- selecting the company details that the notes for a particular patient were sent
 







    