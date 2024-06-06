   /*Generation Time*/
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";
--
-- Database: `authentification`
--

-- --------------------------------------------------------

--
--
-- Table structure for table `Condidat`
--

CREATE TABLE Candidat(
   id VARCHAR(50),
   firstName VARCHAR(50) ,
   lastName VARCHAR(50) ,
   email VARCHAR(50) unique,
   catg VARCHAR(150) ,
   etablissment VARCHAR(150)
   password VARCHAR(250) ,
   dateOfBirth date ,
   phoneNumber VARCHAR(250) ,
   createdAt DATETIME NOT NULL,
   updatedAt DATETIME NOT NULL,
   PRIMARY KEY(id)
);
      --
-- AUTO_INCREMENT for table `Condidat`
--
ALTER TABLE `Candidat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

--
--
-- Table structure for table `Moniteur`
--

CREATE TABLE Moniteur(
   id VARCHAR(50),
   firstName VARCHAR(50) ,
   lastName VARCHAR(50) ,
   email VARCHAR(50) unique,
   phoneNumber VARCHAR(250) ,
   priceSeance int(10),
   priceExamen int(10),
   password VARCHAR(250) ,
   Candidat VARCHAR(50) ,
   createdAt DATETIME NOT NULL,
   updatedAt DATETIME NOT NULL,
   PRIMARY KEY(id)
);
      --
-- AUTO_INCREMENT for table `Moniteur`
--
ALTER TABLE `Moniteur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;
--
--
-- Table structure for table `User`
--

CREATE TABLE User(
   id VARCHAR(50),
   firstName VARCHAR(50) ,
   lastName VARCHAR(50) ,
   email VARCHAR(50) unique,
   password VARCHAR(250) ,
   gov VARCHAR(250) ,
   userName VARCHAR(250) ,
   createdAt DATETIME NOT NULL,
   updatedAt DATETIME NOT NULL,
   PRIMARY KEY(id)
);
      --
-- AUTO_INCREMENT for table `User`
--
ALTER TABLE `User`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;
--
--
-- Table structure for table `Examen`
--

CREATE TABLE Examen(
   id VARCHAR(50),
   Type VARCHAR(50) ,
   heure VARCHAR(50),
   Candidat VARCHAR(50),
   Moniteur VARCHAR(50),
   Centredexamen VARCHAR(50),
   commentaire VARCHAR(250) ,
   dateExamen date , 
   Etat VARCHAR(250) ,
   FraisDossier BOOLEAN,
   createdAt DATETIME NOT NULL,
   updatedAt DATETIME NOT NULL,
   PRIMARY KEY(id)
);
      --
-- AUTO_INCREMENT for table `seance`
--
ALTER TABLE `Examen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;



CREATE TABLE seance(
   id VARCHAR(50),
   Type VARCHAR(50) ,
   heure VARCHAR(50),
   Candidat VARCHAR(50),
   Moniteur VARCHAR(50),
   commentaire VARCHAR(250) ,
   dateSeance date , 
   nbSeance int(12),
   createdAt DATETIME NOT NULL,
   updatedAt DATETIME NOT NULL,
   PRIMARY KEY(id)
);
      --
-- AUTO_INCREMENT for table `seance`
--

CREATE TABLE todo(
   id VARCHAR(50),
   list VARCHAR(50) ,
   createdAt DATETIME NOT NULL,
   updatedAt DATETIME NOT NULL,
   PRIMARY KEY(id)
);
      --
-- AUTO_INCREMENT for table `seance`
--
ALTER TABLE `todo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;