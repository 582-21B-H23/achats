SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `achats`
--
CREATE DATABASE IF NOT EXISTS `achats` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `achats`;

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `id` smallint(6) NOT NULL,
  `nom` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `prenom` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `ville` varchar(25) CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Contenu de la table `client`
--

INSERT INTO `client` (`id`, `nom`, `prenom`, `ville`) VALUES
(1, 'Moulin', 'Jean', 'Montréal'),
(2, 'Chapdelaine', 'Marc', 'Québec'),
(3, 'Brochu', 'Sylvie', 'Montréal'),
(4, 'Dupont', 'Manon', 'Montréal'),
(5, 'Massé', 'Alain', 'Québec'),
(6, 'Lefevre', 'Louise', 'Québec');

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

CREATE TABLE `commande` (
  `id` mediumint(9) NOT NULL,
  `numero` char(8) CHARACTER SET utf8mb4 NOT NULL,
  `total` decimal(6,2) NOT NULL,
  `client_id` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Contenu de la table `commande`
--

INSERT INTO `commande` (`id`, `numero`, `total`, `client_id`) VALUES
(1, 'ZM000001', '128.95', 2),
(2, 'ZM000010', '587.50', 2),
(3, 'ZM000100', '28.56', 5),
(4, 'ZM010055', '1239.25', 6),
(5, 'ZM004500', '457.00', NULL);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `commande`
--
ALTER TABLE `commande`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `client`
--
ALTER TABLE `client`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `commande`
--
ALTER TABLE `commande`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `commande`
--
ALTER TABLE `commande`
  ADD CONSTRAINT `commande_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `client` (`id`);
SET FOREIGN_KEY_CHECKS=1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
