CREATE TABLE `categorie` (
  `id_categorie` int(11) NOT NULL,
  `nom_categorie` varchar(250) NOT NULL
) 

INSERT INTO `categorie` (`id_categorie`, `nom_categorie`) VALUES
(1, 'Mathématiques'),
(2, 'Histoire'),
(3, 'Informatique'),
(4, 'Physique');


CREATE TABLE `questions` (
  `id_question` int(11) NOT NULL,
  `texte_question` text NOT NULL,
  `reponse_correcte` text NOT NULL,
  `points` int(11) NOT NULL,
  `id_quiz` int(11) NOT NULL
) 



INSERT INTO `questions` (`id_question`, `texte_question`, `reponse_correcte`, `points`, `id_quiz`) VALUES
(17, 'Combien font 5 + 7 ?', '12', 20, 1),
(18, 'Résoudre 3x = 12, x = ?', '4', 10, 1),
(19, 'Qui a fondé Fès ?', 'Idriss II', 5, 2),
(20, 'En quelle année a eu lieu la bataille de trois rois ?', '1578', 10, 2),
(21, 'Formule de la vitesse ?', 'v = d/t', 5, 3),
(22, 'Unité du courant électrique ?', 'Ampère', 10, 3);


CREATE TABLE `quiz` (
  `id_quiz` int(11) NOT NULL,
  `titre_quiz` varchar(150) NOT NULL,
  `description` text DEFAULT NULL,
  `id_categorie` int(11) NOT NULL,
  `id_enseignant` int(11) NOT NULL,
  `duree_minutes` int(11) NOT NULL
) 

INSERT INTO `quiz` (`id_quiz`, `titre_quiz`, `description`, `id_categorie`, `id_enseignant`, `duree_minutes`) VALUES
(1, 'Quiz Math Basics', 'Questions sur les bases des maths', 1, 1, 30),
(2, 'Histoire du Maroc', 'Test de connaissances historiques', 3, 2, 65),
(3, 'Physique Niveau 1', 'Introduction à la physique', 4, 2, 40),
(4, 'Quiz Informatique Avancée', 'Test sur la programmation avancée', 3, 1, 50);



CREATE TABLE `resultats` (
  `id_resultat` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  `date_passage` date NOT NULL,
  `id_etudiant` int(11) NOT NULL,
  `id_quiz` int(11) NOT NULL
) 


INSERT INTO `resultats` (`id_resultat`, `score`, `date_passage`, `id_etudiant`, `id_quiz`) VALUES
(1, 39, '2025-01-10', 3, 1),
(2, 75, '2025-01-11', 4, 1),
(3, 45, '2025-01-12', 3, 2),
(4, 45, '2025-01-13', 5, 2),
(5, 70, '2025-01-14', 4, 3),
(6, 85, '2025-01-15', 5, 3);



CREATE TABLE `utilisateurs` (
  `id_utilisateur` int(11) NOT NULL,
  `nom` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `motdepasse` varchar(150) NOT NULL,
  `role` enum('enseignant','etudiant') NOT NULL
) 



INSERT INTO `utilisateurs` (`id_utilisateur`, `nom`, `email`, `motdepasse`, `role`) VALUES
(1, 'mohamed', 'mohamed@gmail.com', '41172', 'enseignant'),
(2, 'Salim', 'salim@gmail.com', 'abcdef', 'etudiant'),
(3, 'Ahmed', 'ahmed@gmail.com', '123456', 'enseignant'),
(4, 'Salim', 'salim@gmail.com', 'abcdef', 'etudiant'),
(5, 'Ali Teacher', 'ali.teacher@example.com', '12345', 'enseignant'),
(6, 'Sara Teacher', 'sara.teacher@example.com', 'abcde', 'enseignant'),
(7, 'Youssef Etudiant', 'youssef.etudiant@example.com', 'pass1', 'etudiant'),
(8, 'Imane Etudiante', 'imane.etudiante@example.com', 'pass2', 'etudiant'),
(9, 'Hassan Etudiant', 'hassan.etudiant@example.com', 'pass3', 'etudiant');
