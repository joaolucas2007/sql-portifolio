Create Database SeriesDB
Go

Use SeriesDB
Go				--Criação Do banco de dados SeriesDB--


--Criação das Tabelas--
Create Table Plataformas
(IdPlataforma Int Primary Key Identity (1,1),
NomePlataforma VarChar(50) Not Null Unique --Unique não permita que exista duas plataformas com o mesmo nome--
)
Go
Create Table Series (
IdSerie Int Primary Key Identity (1,1),
TituloSerie VarChar (75) Not Null Unique, 
DataLancamento Date Not Null Check (DataLancamento >= '1940-01-01'),
NotaImdb Decimal (3,1) Check (NotaImdb Between 0.0 and 10.0),
IdPlataforma Int Not Null
)
Go
Create Table Episodios(
IdEpisodio Int Primary Key Identity (1,1),
NumeroEpisodio Int Not Null,
NumeroTemporada Int Not Null,
TituloEpisodio VarChar (50) Not Null,
DuracaoEpisodio Int Not Null Check (DuracaoEpisodio > 0),
IdSerie Int Not Null 
)
Go
--Usando Alter Table para ligar fazer as ligaçções por meio de foreign Key--

Alter Table Series
Add Constraint Fk_Serie_Plataformas_IdPlataforma
Foreign Key (IdPlataforma)
References Plataformas (IdPlataforma)
Go

Alter Table Episodios
Add Constraint Fk_Episodios_Series_IdSerie
Foreign Key (IdSerie)
References Series (IdSerie)
Go