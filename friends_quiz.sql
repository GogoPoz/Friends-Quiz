-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: friends_quiz
-- ------------------------------------------------------
-- Server version	8.0.37

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `questions_answers`
--

DROP TABLE IF EXISTS `questions_answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `questions_answers` (
  `question_id` int NOT NULL AUTO_INCREMENT,
  `question` varchar(200) DEFAULT NULL,
  `answer` varchar(200) DEFAULT NULL,
  `season` int DEFAULT NULL,
  `episode` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`question_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions_answers`
--

LOCK TABLES `questions_answers` WRITE;
/*!40000 ALTER TABLE `questions_answers` DISABLE KEYS */;
INSERT INTO `questions_answers` VALUES (1,'Where do Ross and Rachel spend their first night together?','The planetarium at Ross\'s work',2,'Episode 15: The One Where Ross and Rachel... You Know'),(2,'What present did Chandler buy for Rachel before the friends decide to do Secret Santa?','A briefcase initialled with R.G.',4,'Episode 8: The One with Chandler in a Box'),(3,'What are the three types of ice that Phoebe provides for Rachel\'s surprise party, much to Monica\'s annoyance?','Crushed, cubed and dry',5,'Episode 18: The One Where Rachel Smokes'),(4,'What stolen bakery delight tastes so good that Rachel and Chandler eat it off the floor?','A cheesecake from Mama\'\'s Little Bakery',7,'Episode 11: The One with All the Cheesecakes'),(5,'When Chandler borrows money from Joey and notices that Monica has done the same, what does Joey tell Chandler she borrowed the money for?','A boob job',9,'Episode 16: The One with the Boob Job'),(6,'By Season 10, what is Janice\'s full name?','Janice Litman Goralnik née Hosenstein',10,'Episode 15: The One Where Estelle Dies'),(7,'What is Richard\'s occupation?','Ophthalmologist',2,'Episode 15: The One Where Ross and Rachel...You Know'),(8,'What is the line to Chandler, after he\'s so far past the line that he can\'t even see it?','The line is a dot to him',4,'Episode 7: The One Where Chandler Crosses the Line'),(9,'What kind of soup does the runner place in front of Joey during the commercial audition that throws him?','Noodle soup',5,'Episode 18: The One Where Rachel Smokes'),(10,'When David and Phoebe reunite in New York for one night only, David speaks a Russian phrase to Phoebe. What does it mean?','Please, clean my beakers',7,'Episode 11: The One with All the Cheesecakes'),(11,'When Phoebe mugged Ross as a child, back before they knew each other, what possecion of his did she keep?','His hand-drawn comic, Science Boy',9,'Episode 15: The One with the Mugging'),(12,'What does Rachel\'s boss keep mistakenly calling Ross?','Ron',10,'Episode 15: The One Where Estelle Dies'),(13,'How much older than Monica is Richard?','21 years',2,'Episode 15: The One Where Ross and Rachel... You Know'),(14,'What does chandler end up giving Kathy for her birthday?','A pen that is also a clock',4,'Episode 6: The One with the Dirty Girl'),(15,'Ben and Joey audition for the same commercial. For what product is the commercial?','Soup',5,'Episode 18: The One Where Rachel Smokes'),(16,'What is Joey\'s middle name?','Francis',7,'Episode 11: The One with All the Cheesecakes'),(17,'When Joey gets a callback after an audition, what accidentally makes him perform really well?','He really needs the bathroom',9,'Episode 15: The One with the Mugging'),(18,'What does Ross give Mr Zellner to get him to offer Rachel her old job back a second time?','A pterodactyl egg replica for his son',10,'Episode 15: The One Where Estelle Dies'),(19,'What is the name of Eddie\'s ex-girlfriend?','Tilly',2,'Episode 18: The One Where Dr. Ramoray Dies'),(20,'What nickname does Joey try out whilst working at Allesandro\'s?','Dragon',4,'Episode 10: The One With The Girl From Poughkeepsie'),(21,'What does Rachel buy that she\'s wanted since she was a little girl, but isn\'t sure Monica is going to like?','A Sphynx cat',5,'Episode 21: The One with the Ball'),(22,'What does Tag buy Rachel for her 30th birthday?','A scooter',7,'Episode 14: The One Where They All Turn Thirty'),(23,'After Phoebe drops the lottery tickets, Gunther informs the friends that someone found one on the street outside that won what sum of money?','$10,000',9,'Episode 18: The One with the Lottery'),(24,'After their son is born, what surprise does the doctor spring upon Monika and Chandler?','That the other one will be along in a minute',10,'Episode 17: The Last One');
/*!40000 ALTER TABLE `questions_answers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-09 19:52:07
