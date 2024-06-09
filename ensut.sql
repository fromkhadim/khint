-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 07 juin 2024 à 03:10
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `ensut`
--

-- --------------------------------------------------------

--
-- Structure de la table `etudiant`
--

CREATE TABLE `etudiant` (
  `id` int(11) NOT NULL,
  `login` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `etudiant`
--

INSERT INTO `etudiant` (`id`, `login`, `email`, `password`, `token`) VALUES
(1, 'moussa', 'mousss@gmail.com', '$2y$10$Ys9uGr62Ro43sKTHDuga5uOBWo4U00EnUtJM6df02Q50.oM72JjdG', 'LbVe0oFUy3ICl6J4wUihtw1lxUUeUbjqz2LlLC2EMS0KdBStxTlp1lcGPtDZCoML057Lb7QrXSzGPVuBYfrgPxlOhEoeHmxyk1Af'),
(2, 'mansour', 'Mbaye@gmail.com', '$2y$10$iAAkMoNpj77PNQrasTJiT.4G2VDKFN9fUzgQudAV2Py3frI/HVxzy', 'jYfbp3aKtUe9k3vXQcuALEPGQ7ZcqKz3g1nJumqKGQjW0EHARcTpUohpDee2ynHysJAZOi6Rrz7CupB90lXVYN4V5OX78sHhyayh'),
(3, 'mademba', 'demba@gmail.com', '$2y$10$w0/PfBB4cdeXk4dLhNSyd.YchFo82vlnjMWA0hkErncnPqPI4a3Gy', 'kxPDIhbKi5wfO5clLNrWpIV78FbhF8lzBu0l3Db4fGqTViroqmo4YDZbKJ6m79zfdd5mAhUIlHRl3kJVVBVAYQCvmweknYjf2PPp'),
(4, 'mademba', 'demba@gmail.com', '$2y$10$UpuIHjAGZLFJW0lcAP89juQDu5EBGLuVVEmQYfHPlTvSgzxj3CAf.', 'WLTmb96uUphlazT8EdM66a0Cxw0h664xhtNAE7crmuunQsjSM9BKblJ2c32qn6yQMrHRbnjjshmzH8dFQkDsz7shrHmkev2PwTtw'),
(5, 'moustapha', 'moustaphe@gmail.com', '$2y$10$k0/TSBt5yfyFH3rfPYFI4OY8keYzq9NLuBQyw43uqy4veuNGjeEb6', 'RJOtj85gQlGjCjn7fZU4rJaScW09vXSObpUvuqCvdAu13gah8dOrHSnfuaEZLOJH8nyIhwOnhvVulP46Wzn8akwR5M2xkaFYCibN'),
(6, 'PapeDiop', 'diop@gmail.com', '$2y$10$pGFbW17XY1w3NwFRm1bM9uIs9omHIk2rLV2EBxqMGFL3IFxUI5NRG', '4VEyMl4XjKgB2bFX0NiUNGklHL1P9SLm5Ig4SNsQ4TDcivJxJ0ZVfyrG80T7nLA93zj19VoG1L8lrTxJshPklSovTX5loHyfo0wh'),
(7, 'Balla', 'Mameballe@gmail.com', '$2y$10$9N1nPGgkLaDXqYwUvqFA0uVhJ/TOO5o6iHGOM.UM1wt8.fsF3A8V2', 'DJRToaCTwS2uRA34A4ZmtTqj5XYx2yKud77zvR8NwrRewljxrzH4qYHJUFLMYGjBhOq45NJuDeA1BFRQKIDCKiRoGsIwUgkidAje'),
(8, 'Abdou', 'abdou@gmail.com', '$2y$10$NAVVbJO7DFYnZxGKwJOdtuU82mVgFSTiHsPEWyz5VtpN6sAPaMvra', 'raqfHnrF4Zlf81weiFf0GvuvzSgXbbqapG1Q73DcgpBqNwP03LFPzw1uwTi2rTPN0udr7VP3I0S9QqYvEGaRC16KDzqSHj35PBI9');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `etudiant`
--
ALTER TABLE `etudiant`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `etudiant`
--
ALTER TABLE `etudiant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
