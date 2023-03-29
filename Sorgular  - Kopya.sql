


--UPDATE SORGULARI--

UPDATE Ogrenci
SET  ID_No = 12345678998 , DogumTarihi = '1996-06-27'
WHERE OgrenciID=1;


UPDATE IletisimBilgisi
SET  Telefon = 67545556789
WHERE OgrenciID=6;


--DELETE SORGULARI--

DELETE FROM Ogrenci WHERE OgrenciID=11;

DELETE FROM Ogrenci WHERE OgrenciID=12;


select*from Ogrenci

--SELECT SORGULARI--

select Sehir 'Sehir',Ilce'Ýlçe' from IletisimBilgisi where OgrenciID=5

select ID_No,OgrenciID from Ogrenci where Cinsiyet='K'

select Mahalle+' Mahallesi '+Sokak+' Sokak '+Ilce+' / '+Sehir from IletisimBilgisi

--LOGICAL OPERATORS

select * from Egitim where Gpa>3 and MezuniyetDurumu=1

select OgrenciID,Gpa from Egitim where Bolum='Hukuk' or Bolum='Siyaset Bilimi'

--SPECIAL OPERATORS

Select OgrenciID,Bolum from Egitim where Gpa BETWEEN 3.5 AND 4.00;

Select * from Ogrenci where Milliyet2 IS NOT NULL

Select * from Egitim where Bolum LIKE '%Mühendis%'



--ORDER BY SORGULARI

Select Ad,Soyad from Ogrenci order by Ad DESC 

Select OgrenciID,Gpa,MezunOlunanUni,Bolum from Egitim order by Gpa,Bolum ASC

Select distinct Ulke from IletisimBilgisi

---FUNCTION OPERATORS

---Count

Select count(*) 'Baþarýlý Öðrenci Sayýsý' from Egitim where Gpa>3.5 

---Max And Mýn

Select Max(Gpa) 'En Yüksek GPA' from Egitim

Select Min(Gpa) 'En Düþük GPA' from Egitim

---Sum ve Avg

select Sum(Gpa)/COUNT(OgrenciID) from Egitim 


Select AVG(Gpa) 'Ortalama GPA' from Egitim

---SUBQUERY

Select Ad,Soyad,ID_No  from Ogrenci where OgrenciID>(Select AVG(Gpa) 'Ortalama GPA' from Egitim) order by Ad DESC

---GROUPING DATA

Select OgrenciID,Avg(Gpa) from Egitim  group by OgrenciID 

---INNER JOIN

Select Ad,Soyad,Gpa from Engellilik 
	join 
	Ogrenci on Engellilik.OgrenciID=Ogrenci.OgrenciID
	join 
	Egitim on Egitim.OgrenciID=Ogrenci.OgrenciID

	Select Ad,Soyad,Bolum from Egitim
	left join 
	Ogrenci on Ogrenci.OgrenciID=Egitim.OgrenciID where MezuniyetDurumu=0

	select Ad,Soyad,Email,Telefon from IletisimBilgisi 
	right join
	Ogrenci on Ogrenci.OgrenciID=IletisimBilgisi.OgrenciID

--VIEW OLUÞTURMA--

CREATE VIEW dbo.BolumeGoreBasari AS
Select OgrenciID,Gpa,MezunOlunanUni,Bolum 
from Egitim order by Gpa desc,Bolum OFFSET 0 rows       

select * from dbo.BolumeGoreBasari

-- STORED PROCEDURE OLUÞTURMA --


create procedure ogrenciEkleme
(
@Ad nvarchar(50),
@Soyad nvarchar(50),
@Milliyet nvarchar(50),
@Milliyet2 nvarchar(50),
@ID_No char(20),
@Cinsiyet char(1),
@DogumTarihi date
)
as 
begin
 INSERT INTO Ogrenci (Ad , Soyad ,Milliyet,Milliyet2 , ID_No , Cinsiyet ,DogumTarihi )
 VALUES(@Ad , @Soyad ,@Milliyet, @Milliyet2 , ID_No , @Cinsiyet ,@DogumTarihi )
END

EXEC ogrenciEkleme @Ad='', @Soyad= '', @Milliyet='', @Milliyet2='' , 
 @ID_No='' , @Cinsiyet='', @DogumTarihi = 0;

--FUNCTION OLUÞTURMA

create function GPAGoreOgrenciSayisi
(
@GPA int


)
returns int
as
begin
	declare @sonuc int;
	select @sonuc= Count(OgrenciID)from Egitim where Gpa>@GPA
	
return	 @sonuc 
end

select dbo.GPAGoreOgrenciSayisi(3);





--TRIGGER OLUÞTURMA--

create trigger GPAKontrol      
on Egitim 
instead of insert    
as
BEGIN
declare @Gpa decimal(3,2);
select @Gpa = Gpa from Inserted 
		
		if(@Gpa<2.5)
		BEGIN
			raiserror ('Not ortalamasý 2,5 dan düþük olan öðrenciler kayýt olamaz!',16,1) 
			rollback transaction;   
		END
		ELSE
		BEGIN
	INSERT INTO Egitim(OgrenciID  , MezunOlunanUni  ,Bolum  ,MezuniyetDurumu  ,MezuniyetTarihi  , Gpa)
 
 SELECT OgrenciID  , MezunOlunanUni  ,Bolum  ,MezuniyetDurumu  ,MezuniyetTarihi  , Gpa FROM inserted;
		END
END;


