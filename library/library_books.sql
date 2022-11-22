-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: library
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books` (
  `id` int NOT NULL,
  `name` varchar(50) NOT NULL,
  `author` varchar(45) NOT NULL,
  `publisher` varchar(45) DEFAULT NULL,
  `category` varchar(45) DEFAULT NULL,
  `price` float NOT NULL,
  `breif` varchar(5000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (1,'Lord of the Rings: Fellowship','Ehtesham Zafar','R R Publishers','Comedy',59.99,NULL),(2,'Twilight','Henry Ford','','Romantic',0,'Seventeen-year-old Bella Swan, leaves Phoenix, Arizona and moves to Forks, a small town located on Washington state\'s Olympic Peninsula, to live with her father, Charlie, the town\'s police chief. Her mother, Renée, is remarried to Phil, a minor league baseball player whose career often keeps them on the road. Bella becomes re-acquainted with Jacob Black, a Native American teen who lives with his father, Billy, on the Quileute Indian Reservation near Forks. She makes friends at her new high school, but finds the mysterious and aloof Cullen siblings particularly intriguing. Bella is seated next to Edward Cullen in biology class on her first day, but he seems repulsed by her. After a week\'s absence from school, Edward returns and socializes normally with Bella. A few days later, she is nearly struck by a skidding van in the school parking lot. Edward instantaneously covers a distance of over thirty feet, putting himself between Bella and the van, stopping it with only his hand. He subsequently refuses to explain his actions to her, warning her against befriending him. Jacob tells Bella about a long-standing animosity between the Cullens and the Quileutes, and says the Cullens are not allowed on the reservation.'),(3,'Wimpy Kid','Hassan Ali','MK Publisher','Funny',0,'Wrecking Ball is the 14th book in the Diary of a Wimpy Kid series. The series follows an unlucky middle school student named Greg Heffley, his family, and his friends. The books are illustrated with simple, black-and-white drawings from Greg\'s perspective. Wrecking Ball focuses on Greg; his mother, Susan; his father, Frank; and his best friend, Rowley; as the Heffley family renovates their house and prepares to move to a new neighborhood. In March, Greg goes through his closet for spring cleaning day and reminisces about various objects from his childhood. He then has a yard sale and hires Rowley to make sure nothing is stolen. When it starts raining, Greg\'s objects on sale are ruined, and he does not sell anything. When Greg\'s great aunt Reba dies, Greg is very excited about receiving inheritance money. After a family meeting, Susan chooses to spend the money on expanding their house\'s kitchen. To prepare for the construction, Frank tries to teach Greg how to do chores around the house. Greg fears that a monster is in the plumbing while trying to unclog the drain. When Greg is instructed to paint around his family\'s hot tub, he discovers a wasp\'s nest. While cleaning the gutters, the ladder falls and Greg is stuck on the roof until he climbs in through the bathroom window. Susan hires professional workers, and Frank sends Greg outside to help them. A fight is started when Greg ruins one of the workers\' lunch deliveries.'),(4,'Warriors','Ehetsham Zafar','Daily Books','Fight',99.99,'Two worriors met in the battle feild.'),(5,'Harry Potter','J.K. Rowling','MK Publishers','SciFi',150,'Harry Potter lives with his abusive aunt and uncle, Vernon and Petunia Dursley and their bullying son, Dudley. On Harry\'s eleventh birthday, a half-giant named Rubeus Hagrid personally delivers an acceptance letter to Hogwarts School of Witchcraft and Wizardry, revealing that Harry\'s parents, James and Lily Potter, were wizards. When Harry was one year old, an evil and powerful dark wizard, Lord Voldemort, murdered his parents. Harry survived Voldemort\'s killing curse that rebounded off his forehead and seemingly destroyed the Dark Lord, leaving a lightning bolt-shaped scar on his forehead. Unknown to Harry, he is famous in the wizarding world. Hagrid takes Harry to Diagon Alley, the hidden wizard commerce and retail section in London. Harry\'s parents have left him a fortune kept in Gringotts Wizarding Bank. Harry buys school supplies and a wand from Ollivander. The cores of Harry and Lord Voldemort\'s wands have feathers from the same phoenix bird, making them \"brothers\". Hagrid gives Harry an owl that he names Hedwig. A month later, Harry boards the Hogwarts Express at King\'s Cross railway station\'s secret Platform 9¾. On the journey to Hogwarts, Harry befriends fellow first-year Ronald Weasley and meets Hermione Granger, whom the two boys initially dislike. Harry runs afoul of first-year student, Draco Malfoy.');
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-22 12:06:57
