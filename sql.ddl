USE IDH_HUR

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Przystanki_HUR]'))
	drop table Przystanki_HUR
GO
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Pasazerowie_HUR]'))
	drop table Pasazerowie_HUR
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Rozklad_HUR]'))
	drop table Rozklad_HUR
GO

create table Przystanki_HUR
(
IdPrzystanku int identity(1,1) PRIMARY KEY,
IdPrzystankuT int NOT NULL,
SzerGeograficzna FLOAT NOT NULL,
DlGeograficzna FLOAT NOT NULL
)
GO

create table Pasazerowie_HUR
(
IdTypuPasazera int identity(1,1) PRIMARY KEY,
IdTypPasazeraT int not null,
--Nazwa NVARCHAR(128) NOT NULL,
NazwaAng NVARCHAR(128) NOT NULL,
CenaBiletu FLOAT NOT NULL
)
GO

create table Rozklad_HUR
(
IdRozkladu int identity(1,1) PRIMARY KEY,
IdTrasy int NOT NULL,
NrLinii NVARCHAR(16) NOT NULL,
PrzystPoczatkowy NVARCHAR(50) NOT NULL,
PrzystKoncowy NVARCHAR(50) NOT NULL,
CzasStart datetime NOT NULL,
CzasKoniec datetime NOT NULL
)
GO