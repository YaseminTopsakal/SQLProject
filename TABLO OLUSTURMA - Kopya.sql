
----TABLO OLUÞTURMA----

CREATE TABLE Basvuru(BasvuruID int,OgrenciID int ,BasvuruTarihi date,BasvuruDurum char(10))
Create TABLE Ogrenci (OgrenciID int ,Ad nvarchar(50), Soyad nvarchar(50),Milliyet nvarchar(50),Milliyet2 nvarchar(50),ID_No char(20), Cinsiyet char(1),DogumTarihi date)
CREATE TABLE Hesap(HesapID int,OgrenciID int,KullaniciAdi varchar(30),Sifre nvarchar(10),HesapAcilisTarihi date )
CREATE TABLE Dokuman(DokumanID int, BelgeAdi varchar(20),BelgeYol varchar(500), DokumanTipi varchar(20),YuklemeTarihi date,OgrenciID int)

Create TABLE IletisimBilgisi (IletisimID int, OgrenciID int, Email varchar(100),Telefon varchar(20),Sehir varchar(20),Ilce varchar(20),Mahalle varchar(50),Sokak varchar(50),Ulke varchar(30),PostaKodu varchar(30))
CREATE TABLE Egitim (EgitimID int, OgrenciID int, MezunOlunanUni varchar(100),Bolum varchar(30),MezuniyetDurumu bit,
MezuniyetTarihi date, Gpa decimal(3,2))
CREATE TABLE Engellilik (EngelID int, OgrenciID int, EngellilikAciklamasi varchar(100))

----INSERT SORGULARI----

--Ogrenci Tablosu
INSERT INTO Ogrenci (Ad , Soyad ,Milliyet,Milliyet2 , ID_No  , Cinsiyet ,DogumTarihi )
VALUES ('Yasemin','Topsakal','Tc',NULL,00000000000,'K','1996-07-27');

INSERT INTO Ogrenci (Ad , Soyad ,Milliyet ,Milliyet2 , ID_No, Cinsiyet ,DogumTarihi)
VALUES ('Burcu','Uður','Tc','KKTC',33333334567,'K','1996-09-08');


INSERT INTO Ogrenci (Ad, Soyad,Milliyet,Milliyet2, ID_No , Cinsiyet ,DogumTarihi)
VALUES ('Melisa','Çevik','Tc',NULL,22222222222,'K','1998-10-03');

INSERT INTO Ogrenci (Ad, Soyad,Milliyet,Milliyet2, ID_No  , Cinsiyet,DogumTarihi)
VALUES ('Cansu','Gürkan','Tc','Ýsveç',55555555555,'K','1991-05-21');

INSERT INTO Ogrenci (Ad , Soyad ,Milliyet,Milliyet2 , ID_No , Cinsiyet ,DogumTarihi)
VALUES ('Ali','Çalýþkan','Tc',NULL,66666666666,'E','1998-04-05');

INSERT INTO Ogrenci (Ad , Soyad ,Milliyet ,Milliyet2 , ID_No   , Cinsiyet  ,DogumTarihi  )
VALUES ('Baran','Boða','Tc',NULL,77777789777,'E','1996-07-24');

INSERT INTO Ogrenci (Ad , Soyad ,Milliyet ,Milliyet2 , ID_No  , Cinsiyet  ,DogumTarihi  )
VALUES ('Arslan Mert','Uður','Tc',NULL,88888888,'E', '1995-05-06');

INSERT INTO Ogrenci (Ad , Soyad ,Milliyet ,Milliyet2 , ID_No  , Cinsiyet  ,DogumTarihi  )
VALUES ('Çaðrý','Sabancý','Tc',NULL,999999999,'E', '1998-12-12');

INSERT INTO Ogrenci (Ad , Soyad ,Milliyet ,Milliyet2 , ID_No   , Cinsiyet  ,DogumTarihi  )
VALUES ('Çaðrý','Kurter','Tc','Romanya',77777777777,'E', '1992-12-10');

INSERT INTO Ogrenci (Ad , Soyad ,Milliyet ,Milliyet2 , ID_No   , Cinsiyet  ,DogumTarihi  )
VALUES ('Michael','Scott','Ýngiltere',NULL,88888888888,NULL,'E', '1997-12-11');

INSERT INTO Ogrenci (Ad , Soyad ,Milliyet ,Milliyet2 , ID_No  , Cinsiyet  ,DogumTarihi  )
VALUES ('Mehmet','Yýlmaz','Ýngiltere',NULL,85794758678,'E', '1997-12-02');




----Basvuru QUERY--


INSERT INTO Basvuru  (OgrenciID   ,BasvuruTarihi  ,BasvuruDurum  )

VALUES (1, '2023-12-01' ,1);

INSERT INTO Basvuru  (OgrenciID   ,BasvuruTarihi  ,BasvuruDurum  )

VALUES (2, '2023-12-01' ,1);

INSERT INTO Basvuru  (OgrenciID   ,BasvuruTarihi  ,BasvuruDurum  )

VALUES (3, '2023-12-01' ,1);

INSERT INTO Basvuru  (OgrenciID   ,BasvuruTarihi  ,BasvuruDurum  )

VALUES (4, '2023-12-10' ,1);

INSERT INTO Basvuru  (OgrenciID   ,BasvuruTarihi  ,BasvuruDurum  )

VALUES (5, '2023-11-01' ,0);

INSERT INTO Basvuru  (OgrenciID   ,BasvuruTarihi  ,BasvuruDurum  )

VALUES (6, '2023-02-01' ,1);

INSERT INTO Basvuru  (OgrenciID   ,BasvuruTarihi  ,BasvuruDurum  )

VALUES (7, '2022-12-11' ,0);

INSERT INTO Basvuru  (OgrenciID   ,BasvuruTarihi  ,BasvuruDurum  )

VALUES (8, '2022-17-09' ,1);

INSERT INTO Basvuru  (OgrenciID   ,BasvuruTarihi  ,BasvuruDurum  )

VALUES (9, '2023-12-01' ,0);

INSERT INTO Basvuru  (OgrenciID   ,BasvuruTarihi  ,BasvuruDurum  )

VALUES (10, '2023-11-01' ,1);


---- Ýletiþim Bilgileri ekleme--

INSERT INTO IletisimBilgisi( OgrenciID,Email  ,Telefon  ,Sehir  ,Ilce  ,Mahalle  ,Sokak  ,Ulke  ,PostaKodu)

VALUES (1,'yasemin_t@hotmail-com','05999998787','Bursa','Osmangazi','Çeltik',' Çam','Türkiye','16234');

INSERT INTO IletisimBilgisi(  OgrenciID,Email  ,Telefon  ,Sehir  ,Ilce  ,Mahalle  ,Sokak  ,Ulke  ,PostaKodu)

VALUES (2,'burcu@gmail-com','055678766567','Girne','Ýskele','Efe', 'Ýskele','Kýbrýs','66789');

INSERT INTO IletisimBilgisi(  OgrenciID,Email  ,Telefon  ,Sehir  ,Ilce  ,Mahalle  ,Sokak  ,Ulke  ,PostaKodu)

VALUES (3,'melisa@gmail-com','09876568744','Hatay','Antakya','Aðaç',' Kiraz','Türkiye','786789');

INSERT INTO IletisimBilgisi(  OgrenciID,Email  ,Telefon  ,Sehir  ,Ilce  ,Mahalle  ,Sokak  ,Ulke  ,PostaKodu)

VALUES (4,'cansu@gmail-com','0786594980','Stockholm','Varmdo','Varmdo',' NV','Ýsveç','13930');

INSERT INTO IletisimBilgisi(  OgrenciID,Email  ,Telefon  ,Sehir  ,Ilce  ,Mahalle  ,Sokak  ,Ulke  ,PostaKodu)

VALUES (5,'ali@gmail-com','07889098876','Ýstanbul','Ataþehir','Barboros',' Yaprak','Türkiye','34746');

INSERT INTO IletisimBilgisi(  OgrenciID,Email  ,Telefon  ,Sehir  ,Ilce  ,Mahalle  ,Sokak  ,Ulke  ,PostaKodu)

VALUES (6,'baran@gmail-com','07878906577','Ankara','Çankaya','Turan',' Güneþ','Türkiye','06550');

INSERT INTO IletisimBilgisi(  OgrenciID,Email  ,Telefon  ,Sehir  ,Ilce  ,Mahalle  ,Sokak  ,Ulke  ,PostaKodu)

VALUES (7,'mert@gmail-com','08997658890','Ýzmir','Urla','Yaka',' Muz','Türkiye','35450');

INSERT INTO IletisimBilgisi(  OgrenciID,Email  ,Telefon  ,Sehir  ,Ilce  ,Mahalle  ,Sokak  ,Ulke  ,PostaKodu)

VALUES (8,'csabanci@gmail-com','05678909976','Antalya','Kemer','Atatürk',' Kerem','Türkiye','07950');

INSERT INTO IletisimBilgisi(  OgrenciID,Email  ,Telefon  ,Sehir  ,Ilce  ,Mahalle  ,Sokak  ,Ulke  ,PostaKodu)

VALUES (9,'ckurter@gmail-com','0789666878','Ýstanbul','Þiþli','Osmanbey', 'Bilgiç','Türkiye','34950');

INSERT INTO IletisimBilgisi(  OgrenciID,Email  ,Telefon  ,Sehir  ,Ilce  ,Mahalle  ,Sokak  ,Ulke  ,PostaKodu)

VALUES (10,'michael@gmail-com','023456789','Londra','ChurchLane','George', 'West','Ýngiltere','NP337KP');


----Hesap INSERT--



INSERT INTO Hesap  (OgrenciID  ,KullaniciAdi  ,Sifre   ,HesapAcilisTarihi   )

VALUES ( 1, 'yasemintopsakal', '1234yt' , '2023-09-01');



INSERT INTO Hesap  (OgrenciID  ,KullaniciAdi  ,Sifre   ,HesapAcilisTarihi   )

VALUES ( 2, 'burcuturan', '1234bt' , '2023-10-01');



INSERT INTO Hesap  (OgrenciID  ,KullaniciAdi  ,Sifre   ,HesapAcilisTarihi   )

VALUES ( 3, 'melisacevik', '1234mc' , '2023-11-23');



INSERT INTO Hesap  (OgrenciID  ,KullaniciAdi  ,Sifre   ,HesapAcilisTarihi   )

VALUES ( 4, 'cansugurkan', '1234cg' , '2023-11-10' );



INSERT INTO Hesap  (OgrenciID  ,KullaniciAdi  ,Sifre   ,HesapAcilisTarihi   )

VALUES (5, 'alicaliskan', '1234ac' , '2023-11-01');



INSERT INTO Hesap  (OgrenciID  ,KullaniciAdi  ,Sifre   ,HesapAcilisTarihi   )

VALUES ( 6, 'baranboga', '1234bb' , '2023-11-01');



INSERT INTO Hesap  (OgrenciID  ,KullaniciAdi  ,Sifre   ,HesapAcilisTarihi   )

VALUES ( 7, 'arslanmertugur', '1234amu' , '2023-11-24' );



INSERT INTO Hesap  (OgrenciID  ,KullaniciAdi  ,Sifre   ,HesapAcilisTarihi   )

VALUES ( 8, 'cagrisabanci', '1234cs' , '2023-12-24');



INSERT INTO Hesap  (OgrenciID  ,KullaniciAdi  ,Sifre   ,HesapAcilisTarihi   )

VALUES ( 9, 'cagrikurter', '1234ck' , '2023-11-07');

INSERT INTO Hesap  (OgrenciID  ,KullaniciAdi  ,Sifre   ,HesapAcilisTarihi   )

VALUES ( 10, 'michaelscott', '1234ms' , '2023-10-14' );



----Dokuman Insert--
INSERT INTO Dokuman(  BelgeAdi  ,BelgeYol  , DokumanTipi  ,YuklemeTarihi  ,OgrenciID  )

VALUES('yasemintopsakal_cv' , 'C://bilgisayarim/belgelerim/khas/cv ' ,' CV' , '2023-11-07',1);



INSERT INTO Dokuman(  BelgeAdi  ,BelgeYol  , DokumanTipi  ,YuklemeTarihi  ,OgrenciID  )

VALUES('burcuugur_cv' , 'C://bilgisayarim/belgelerim/khas/cv' , 'CV' , '2023-11-09',2);



INSERT INTO Dokuman(  BelgeAdi  ,BelgeYol  , DokumanTipi  ,YuklemeTarihi  ,OgrenciID  )

VALUES( 'melisacevik_cv' , 'C://bilgisayarim/belgelerim/khas/cv' , 'CV' ,'2023-11-17',3);



INSERT INTO Dokuman(  BelgeAdi  ,BelgeYol  , DokumanTipi  ,YuklemeTarihi  ,OgrenciID  )

VALUES('cansugurkan_cv' , 'C://bilgisayarim/belgelerim/khas/cv' ,' Cv' , '2023-11-20',4);



INSERT INTO Dokuman(  BelgeAdi  ,BelgeYol  , DokumanTipi  ,YuklemeTarihi  ,OgrenciID  )

VALUES(' alicaliskan_ML' , 'C://bilgisayarim/belgelerim/khas/motivlet' , 'Motivation Letter ', '2023-11-12',5);



INSERT INTO Dokuman(  BelgeAdi  ,BelgeYol  , DokumanTipi  ,YuklemeTarihi  ,OgrenciID  )

VALUES('baranboga_dip ','C://bilgisayarim/belgelerim/khas/dip ', 'Diploma ', '2023-11-25',6);



INSERT INTO Dokuman(  BelgeAdi  ,BelgeYol  , DokumanTipi  ,YuklemeTarihi  ,OgrenciID  )

VALUES('arslanmertugur_pas' , 'C://bilgisayarim/belgelerim/khas/Pass' ,'Passport' , '2023-11-09',7);



INSERT INTO Dokuman(  BelgeAdi  ,BelgeYol  , DokumanTipi  ,YuklemeTarihi  ,OgrenciID  )

VALUES(' cagrisabanci_adr ',' C://bilgisayarim/belgelerim/khas/adr' ,'Address' , '2023-11-08',8);



INSERT INTO Dokuman(  BelgeAdi  ,BelgeYol  , DokumanTipi  ,YuklemeTarihi  ,OgrenciID  )

VALUES('cagrikurter_cv ', 'C://bilgisayarim/belgelerim/khas/cv ',' CV' , '2023-11-07',9);



INSERT INTO Dokuman(  BelgeAdi  ,BelgeYol  , DokumanTipi  ,YuklemeTarihi  ,OgrenciID  )

VALUES(' michaelscott_cv ',' C://bilgisayarim/belgelerim/khas/cv' , 'CV' , '2023-11-16',10);

----Engellilik Insert--

INSERT INTO Engellilik(  OgrenciID    , EngellilikAciklamasi   ) 
VALUES( 5, 'Gorme Engelli');

--Egitim Insert--

INSERT INTO Egitim ( OgrenciID  , MezunOlunanUni  ,Bolum  ,MezuniyetDurumu  ,MezuniyetTarihi  , Gpa  )

VALUES( 1, 'Bilgi Üniversitesi' , 'Hukuk' , 1 ,'2017-06-25' , 4.00);



INSERT INTO Egitim (   OgrenciID  , MezunOlunanUni  ,Bolum  ,MezuniyetDurumu  ,MezuniyetTarihi  , Gpa  )

VALUES(  2, 'Oxford Üniversitesi', 'Mimarlýk' , 1,'2017-06-30' , 4.00 );



INSERT INTO Egitim (   OgrenciID  , MezunOlunanUni  ,Bolum  ,MezuniyetDurumu  ,MezuniyetTarihi  , Gpa  )

VALUES(  3, 'Harvard Üniversitesi' , 'Ýþletme' , 1,'2017-06-24' , 4.00 );



INSERT INTO Egitim (   OgrenciID  , MezunOlunanUni  ,Bolum  ,MezuniyetDurumu  ,MezuniyetTarihi  , Gpa  )

VALUES( 4, 'Yale Üniversitesi' , 'Sosyoloji', 1,'2017-06-22' , 3.97 );



INSERT INTO Egitim (   OgrenciID  , MezunOlunanUni  ,Bolum  ,MezuniyetDurumu  ,MezuniyetTarihi  , Gpa  )

VALUES( 5, 'Ýstanbul Üniversitesi' , 'Hukuk' , 0 ,'2017-06-03' , 3.10 );



INSERT INTO Egitim (   OgrenciID  , MezunOlunanUni  ,Bolum  ,MezuniyetDurumu  ,MezuniyetTarihi  , Gpa  )

VALUES(  6, 'Iþýk Üniversitesi' , 'Bilgisayar Mühendisliði' , 1 ,'2017-06-30' , 2.90 );


INSERT INTO Egitim (   OgrenciID  , MezunOlunanUni  ,Bolum  ,MezuniyetDurumu  ,MezuniyetTarihi  , Gpa  )

VALUES(  7, 'Beykent Üniversitesi' , 'Bilgisayar Mühendisliði' , 1 ,'2017-06-18' , 3.50 );



INSERT INTO Egitim (   OgrenciID  , MezunOlunanUni  ,Bolum  ,MezuniyetDurumu  ,MezuniyetTarihi  , Gpa  )

VALUES(  8, 'Orta Doðu Teknik Üniversitesi', 'Elektrik Elektronik Mühendisliði' , 1 ,'2017-06-30' , 3.40 );



INSERT INTO Egitim (   OgrenciID  , MezunOlunanUni  ,Bolum  ,MezuniyetDurumu  ,MezuniyetTarihi  , Gpa  )

VALUES(  9, 'Bilgi Üniversitesi' , 'Siyaset Bilimi' , 1,'2017-06-22' , 3.45 );



INSERT INTO Egitim (   OgrenciID  , MezunOlunanUni  ,Bolum  ,MezuniyetDurumu  ,MezuniyetTarihi  , Gpa  )

VALUES(  10, 'Dunder Mifflin Üniversitesi' , 'Sanat Tarihi' , 0, '2017-06-30' , 2.98 );












