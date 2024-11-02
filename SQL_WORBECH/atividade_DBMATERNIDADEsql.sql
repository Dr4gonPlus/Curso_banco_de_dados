-- drop database dbmaternidade;

create database dbmaternidade;
use dbmaternidade;
 show create table mãe;
 CREATE TABLE `Mãe` (
  `id_mãe` int NOT NULL AUTO_INCREMENT,
  `rg` varchar(150) NOT NULL,
  `endereco` varchar(200) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_mãe`)
) ;

show create table bebê;
CREATE TABLE `bebê` (
  `id_bebê` int NOT NULL AUTO_INCREMENT,
  `id_mãe` int NOT NULL,
  `dt_nascimento` date NOT NULL,
  `peso` float(5,2) NOT NULL,
  `altura` int NOT NULL,
 PRIMARY KEY (`id_bebê`),
  KEY `FK_MãeBebê` (`id_mãe`),
  CONSTRAINT `FK_MãeBebê` FOREIGN KEY (`id_mãe`) REFERENCES `mãe` (`id_mãe`)
) ;

 show create table medico;
-- CREATE TABLE `medico` (
 -- `id_medico` int NOT NULL AUTO_INCREMENT,
 --  `nome` varchar(150) NOT NULL,
--   `telefone` varchar(20) NOT NULL,
--   `especialidade` varchar(150) NOT NULL,
--  PRIMARY KEY (`id_medico`),
--   KEY `FK_MãeBebê` (`id_mâe`),
 --  CONSTRAINT `FK_MãeBebê` FOREIGN KEY (`id_mãe`) REFERENCES `mãe` (`id_mãe`)
--  ) ;
