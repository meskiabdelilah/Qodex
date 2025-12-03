<!-- Requête 1 : Ajouter un nouveau quiz créé par un enseignant -->


INSERT INTO quiz (titre_quiz, description, id_categorie, id_enseignant, duree_minutes)
VALUES ('Quiz Informatique Avancée', 'Test sur la programmation avancée', 3, 1, 50);


<!-- Requête 2 : Modifier la durée d'un quiz existant -->

UPDATE quiz
SET duree_minutes = 65 
WHERE id_quiz = 2;

<!-- Requête 3 : Afficher tous les utilisateurs -->

SELECT * FROM utilisateurs

<!-- Requête 4 : Afficher uniquement les noms et emails des utilisateurs -->

SELECT nom,email FROM utilisateurs

<!-- Requête 5 : Afficher tous les quiz -->

SELECT * FROM quiz

<!-- Requête 6 : Afficher uniquement les titres des quiz -->

SELECT titre_quiz FROM quiz


<!-- Requête 7 : Afficher toutes les catégories -->

SELECT * FROM categorie

<!-- Requête 8 : Afficher les utilisateurs qui sont enseignants -->

SELECT * FROM utilisateurs
WHERE role = 'enseignant'

<!-- Requête 9 : Afficher les utilisateurs qui sont étudiants -->

SELECT * FROM utilisateurs 
WHERE role = 'etudiant'

<!-- Requête 10 : Afficher les quiz de durée supérieure à 30 minutes -->

SELECT * FROM quiz 
WHERE duree_minutes > 30

<!-- Requête 11 : Afficher les quiz de durée inférieure ou égale à 45 minutes -->

SELECT * FROM quiz 
WHERE duree_minutes <= 45

<!-- Requête 12 : Afficher les questions valant plus de 5 points -->

SELECT * FROM question 
WHERE points > 5

<!-- Requête 13 : Afficher les quiz de durée entre 20 et 40 minutes -->

SELECT * FROM quiz 
WHERE duree_minutes BETWEEN 20 AND 40   

<!-- Requête 14 : Afficher les résultats avec un score supérieur ou égal à 60 -->

SELECT * FROM resultats 
WHERE score >= 60

<!-- Requête 15 : Afficher les résultats avec un score inférieur à 50 -->

SELECT * FROM resultats 
WHERE score < 50

<!-- Requête 16 : Afficher les questions valant entre 5 et 15 points -->

SELECT * FROM questions 
WHERE points BETWEEN 5 AND 15

<!-- Requête 17 : Afficher les quiz créés par l'enseignant avec id_enseignant = 1 -->

SELECT * FROM quiz 
WHERE id_enseignant = 1

<!-- Requête 18 : Afficher tous les quiz triés par durée (du plus court au plus long) -->

SELECT * FROM quiz
ORDER BY  duree_minutes ASC

<!-- Requête 19 : Afficher tous les résultats triés par score (du plus élevé au plus faible) -->

SELECT * FROM resultats
ORDER BY score DESC

<!-- Requête 20 : Afficher les 5 meilleurs scores -->

SELECT * FROM resultats
ORDER BY score DESC
LIMIT 5

<!-- Requête 21 : Afficher les questions triées par points (du plus faible au plus élevé) -->

SELECT * FROM questions
ORDER BY points ASC

<!-- Requête 22 : Afficher les 3 derniers résultats (triés par date_passage décroissante) -->

SELECT * FROM resultats 
ORDER by date_passage ASC 
LIMIT 3;

<!-- Requête 23 : Afficher le nom de chaque quiz avec sa catégorie -->

SELECT titre_quiz, categorie.nom_categorie FROM quiz
JOIN categorie
ON quiz.id_categorie = categorie.id_categorie