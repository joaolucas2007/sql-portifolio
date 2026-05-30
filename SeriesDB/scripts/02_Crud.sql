Use SeriesDB
Go

--Começando a Povoar o Banco de Dados--
--Inserindo a primeira plataforma--
Insert Into Plataformas (NomePlataforma)
Values ('NetFlix')
Go

--Inseridno a Primeira Serie--

Insert Into Series (TituloSerie, DataLancamento, NotaImdb, IdPlataforma)
Values ('Breaking Bead', '2008-01-20', 9.5, 1) 
Go

--Inserindo os dois primeiros episodios--
Insert Into Episodios (NumeroEpisodio, NumeroTemporada,TituloEpisodio,DuracaoEpisodio,IdSerie)
Values (1,1, 'Pilot', 58,1), (2,1,'Cat''s in the bag',48,1)
Go

Insert Into Plataformas (NomePlataforma) Values ('Disney+'), ('Amazon Prime Video'), ('Paramount+')
Go

Insert Into Series (TituloSerie, DataLancamento, NotaImdb, IdPlataforma)
Values ('The Mandalorian', '2019-11-12', 8.6, 2);

Insert Into Series (TituloSerie, DataLancamento, NotaImdb, IdPlataforma)
Values ('The Boys', '2019-07-26', 8.7, 3);

Insert Into Series (TituloSerie, DataLancamento, NotaImdb, IdPlataforma)
Values ('Yellowstone', '2018-06-20', 8.7, 4);
Go

Insert Into Episodios (NumeroEpisodio, NumeroTemporada, TituloEpisodio, DuracaoEpisodio, IdSerie) Values
(1, 1, 'Chapter 1: The Mandalorian', 39, 2),
(2, 1, 'Chapter 2: The Child', 31, 2),
(3, 1, 'Chapter 3: The Sin', 37, 2);

Insert Into Episodios (NumeroEpisodio, NumeroTemporada, TituloEpisodio, DuracaoEpisodio, IdSerie) Values
(1, 1, 'The Name of the Game', 60, 3),
(2, 1, 'Cherry', 61, 3),
(3, 1, 'Get Some', 57, 3);

Insert Into Episodios (NumeroEpisodio, NumeroTemporada, TituloEpisodio, DuracaoEpisodio, IdSerie) Values
(1, 1, 'Daybreak', 92, 4),
(2, 1, 'Kill the Messenger', 47, 4),
(3, 1, 'No Good Horses', 44, 4);
Go


--Fazendo Update com Select para garantir que a linha certa será atualizada--

--Usando Select com nome e id das series para ver qual está com erro e qual o seu Id--
Select IdSerie, TituloSerie From Series 
Go

--Atualizando a primeira série registrada com o nome errado--
Update Series
Set TituloSerie = 'Breaking Bad'
Where IdSerie = 1
Go


Select IdSerie, TituloSerie From Series		--Usamos esse select para Ver Qual o Id Da série Yellowstone--
Go

--Fazemos esse Select Para ver qual episódios destão com o IdSerie que será excluído--
Select IdEpisodio,TituloEpisodio,IdSerie From Episodios
Go

--Iremos Excluir os Episódios da serie com Id = 4 --
Delete From Episodios
Where IdSerie = 4 --Usamos Where para sempre filtrar Corretamente o que vai ser excluído--
Go

--Agora Excluimos a série Yellowstone IdSerie= 4--
Delete From Series
Where IdSerie = 4 --Novamente usando Where para filtrar o que vai ser excluído--
Go