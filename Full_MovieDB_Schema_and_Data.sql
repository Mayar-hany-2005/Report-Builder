
-- إنشاء قاعدة بيانات
CREATE DATABASE MovieDB;


-- استخدام قاعدة البيانات
USE MovieDB;


-- إنشاء جدول Genres
CREATE TABLE Genres (
    GenreID INT PRIMARY KEY IDENTITY(1,1),
    GenreName NVARCHAR(100)
);

-- إنشاء جدول Studios
CREATE TABLE Studios (
    StudioID INT PRIMARY KEY IDENTITY(1,1),
    StudioName NVARCHAR(100)
);

-- إنشاء جدول Countries
CREATE TABLE Countries (
    CountryID INT PRIMARY KEY IDENTITY(1,1),
    CountryName NVARCHAR(100)
);

-- إنشاء جدول Certificates
CREATE TABLE Certificates (
    CertificateID INT PRIMARY KEY IDENTITY(1,1),
    CertificateType NVARCHAR(50)
);

-- إنشاء جدول Movies وربط العلاقات
CREATE TABLE Movies (
    MovieID INT PRIMARY KEY IDENTITY(1,1),
    Title NVARCHAR(255),
    ReleaseDate DATE,
    RunTimeMinutes INT,
    OscarWins INT,
    GenreID INT,
    StudioID INT,
    CountryID INT,
    CertificateID INT,
    FullName NVARCHAR(255),
    FOREIGN KEY (GenreID) REFERENCES Genres(GenreID),
    FOREIGN KEY (StudioID) REFERENCES Studios(StudioID),
    FOREIGN KEY (CountryID) REFERENCES Countries(CountryID),
    FOREIGN KEY (CertificateID) REFERENCES Certificates(CertificateID)
);

-- إدخال بيانات Genres
INSERT INTO Genres (GenreName) VALUES 
('Sci-Fi'), ('Fantasy'), ('Romance'), ('Action'), ('Drama'), 
('Crime'), ('Biography'), ('Thriller'), ('Adventure'), ('Animation'), ('Horror');

-- إدخال بيانات Studios
INSERT INTO Studios (StudioName) VALUES 
('Warner Bros'), ('New Line Cinema'), ('20th Century Fox'), 
('Marvel Studios'), ('Castle Rock Entertainment'), ('Miramax'), 
('DreamWorks'), ('Universal Pictures'), ('CJ Entertainment'), 
('Lucasfilm'), ('Studio Ghibli'), ('Gaumont'), ('Paramount Pictures'), 
('Columbia Pictures'), ('Legendary Pictures'), ('Sony Pictures Classics'),
('Good News 4 Film');

-- إدخال بيانات Countries
INSERT INTO Countries (CountryName) VALUES 
('USA'), ('New Zealand'), ('South Korea'), 
('Japan'), ('France'), ('UK'), ('Lebanon'), ('Egypt');

-- إدخال بيانات Certificates
INSERT INTO Certificates (CertificateType) VALUES 
('PG-13'), ('R'), ('PG');

-- إدخال بيانات الأفلام (20 فيلم)
INSERT INTO Movies (Title, ReleaseDate, RunTimeMinutes, OscarWins, GenreID, StudioID, CountryID, CertificateID, FullName)
VALUES 
('Inception', '2010-07-16', 148, 4, 1, 1, 1, 1, 'Christopher Nolan'),
('The Lord of the Rings: The Return of the King', '2003-12-17', 201, 11, 2, 2, 2, 1, 'Peter Jackson'),
('Titanic', '1997-12-19', 195, 11, 3, 3, 1, 1, 'James Cameron'),
('Avengers: Endgame', '2019-04-26', 181, 1, 4, 4, 1, 1, 'Anthony Russo'),
('The Shawshank Redemption', '1994-09-23', 142, 0, 5, 5, 1, 2, 'Frank Darabont'),
('Pulp Fiction', '1994-10-14', 154, 1, 6, 6, 1, 2, 'Quentin Tarantino'),
('Gladiator', '2000-05-05', 155, 5, 4, 7, 1, 2, 'Ridley Scott'),
('Schindler''s List', '1993-12-15', 195, 7, 7, 8, 1, 2, 'Steven Spielberg'),
('Parasite', '2019-05-30', 132, 4, 8, 9, 3, 2, 'Bong Joon Ho'),
('Star Wars: A New Hope', '1977-05-25', 121, 7, 9, 10, 1, 3, 'George Lucas'),
('Spirited Away', '2001-07-20', 125, 1, 10, 11, 4, 3, 'Hayao Miyazaki'),
('Léon: The Professional', '1994-09-14', 110, 0, 4, 12, 5, 2, 'Luc Besson'),
('The Wolf of Wall Street', '2013-12-25', 180, 0, 7, 13, 1, 2, 'Martin Scorsese'),
('Snatch', '2000-08-23', 104, 0, 6, 14, 6, 2, 'Guy Ritchie'),
('Edward Scissorhands', '1990-12-07', 105, 0, 2, 3, 1, 1, 'Tim Burton'),
('Dune', '2021-10-22', 155, 6, 1, 15, 1, 1, 'Denis Villeneuve'),
('Forrest Gump', '1994-07-06', 142, 6, 5, 13, 1, 1, 'Robert Zemeckis'),
('The Conjuring', '2013-07-19', 112, 0, 11, 2, 1, 2, 'James Wan'),
('Capernaum', '2018-09-20', 126, 0, 5, 16, 7, 2, 'Nadine Labaki'),
('The Island (El Gezira)', '2007-10-03', 115, 0, 4, 17, 8, 1, 'Sherif Arafa');
SELECT * FROM Movies;
SELECT COUNT(*) FROM Movies;


INSERT INTO Movies (Title, ReleaseDate, RunTimeMinutes, OscarWins, GenreID, StudioID, CountryID, CertificateID, FullName)
VALUES 
('Inception', '2010-07-16', 148, 4, 1, 1, 1, 1, 'Christopher Nolan'),
('The Godfather', '1972-03-24', 175, 3, 2, 2, 2, 2, 'Francis Ford Coppola'),
('Titanic', '1997-12-19', 195, 11, 3, 3, 3, 3, 'James Cameron'),
('The Dark Knight', '2008-07-18', 152, 2, 1, 1, 1, 1, 'Christopher Nolan'),
('Pulp Fiction', '1994-10-14', 154, 1, 4, 4, 4, 2, 'Quentin Tarantino'),
('The Shawshank Redemption', '1994-09-23', 142, 0, 5, 5, 5, 2, 'Frank Darabont'),
('Forrest Gump', '1994-07-06', 142, 6, 6, 6, 6, 3, 'Robert Zemeckis'),
('Gladiator', '2000-05-05', 155, 5, 7, 1, 1, 1, 'Ridley Scott'),
('The Matrix', '1999-03-31', 136, 4, 8, 7, 7, 2, 'The Wachowskis'),
('Avatar', '2009-12-18', 162, 3, 9, 3, 3, 3, 'James Cameron'),
('La La Land', '2016-12-09', 128, 6, 10, 8, 1, 1, 'Damien Chazelle'),
('Joker', '2019-10-04', 122, 2, 4, 9, 1, 2, 'Todd Phillips'),
('Avengers: Endgame', '2019-04-26', 181, 1, 9, 10, 1, 1, 'Anthony & Joe Russo'),
('Interstellar', '2014-11-07', 169, 1, 1, 1, 1, 1, 'Christopher Nolan'),
('The Revenant', '2015-12-25', 156, 3, 11, 3, 3, 2, 'Alejandro G. Iñárritu'),
('1917', '2019-12-25', 119, 3, 12, 11, 1, 1, 'Sam Mendes'),
('Black Panther', '2018-02-16', 134, 3, 9, 10, 1, 1, 'Ryan Coogler'),
('Whiplash', '2014-10-10', 107, 3, 10, 8, 1, 2, 'Damien Chazelle'),
('The Social Network', '2010-10-01', 120, 3, 6, 12, 1, 2, 'David Fincher'),
('Coco', '2017-11-22', 105, 2, 13, 13, 3, 3, 'Lee Unkrich');


INSERT INTO Genres (GenreName)
VALUES 
('Sci-Fi'),
('Crime'),
('Romance'),
('Thriller'),
('Drama'),
('Comedy'),
('Action'),
('Adventure'),
('Superhero'),
('Musical'),
('Historical'),
('War'),
('Animation');

