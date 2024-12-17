-- Active: 1734015447016@@127.0.0.1@3306
CREATE DATABASE fut;

use fut;

CREATE TABLE Nationality(
    id_natio INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(100),
    img VARCHAR(255)
);

CREATE TABLE Club (
    id_Club INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(100),
    img VARCHAR(255)
);
CREATE TABLE Statistique(
    id_Stat INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(100),
    img VARCHAR(255)
);

CREATE TABLE Positions(
    id_Position INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(4)
);

CREATE TABLE Player(
    id_Player INT PRIMARY KEY AUTO_INCREMENT,
    id_natio INT ,
    id_Position INT ,
    id_Stat INT ,
    id_Club INT ,
    nom VARCHAR(100),
    prenom VARCHAR(100),
    img VARCHAR(255),
    Foreign Key (id_Position) REFERENCES Positions (id_Position),
    Foreign Key (id_natio) REFERENCES Nationality (id_natio),
    Foreign Key (id_Club) REFERENCES Club (id_Club),
    Foreign Key (id_Stat) REFERENCES Statistique (id_Stat)
);

SELECT * FROM Player;
SELECT * FROM Nationality;
SELECT * FROM Club;
SELECT * FROM Statistique;
SELECT * FROM Positions;




INSERT INTO Player (nom, prenom, img) VALUES("Messi", "Lionel", "https://cdn.sofifa.net/players/158/023/25_120.png");



