-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : sam. 08 oct. 2022 à 06:14
-- Version du serveur : 5.7.23
-- Version de PHP : 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `react_laravel_formation_db`
--

-- --------------------------------------------------------

--
-- Structure de la table `association`
--

DROP TABLE IF EXISTS `association`;
CREATE TABLE IF NOT EXISTS `association` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name_association` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_association` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_association_verified_at` timestamp NULL DEFAULT NULL,
  `password_association` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adresse_association` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sector_activity` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `association_email_association_unique` (`email_association`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'corporis', '2022-09-27 04:03:55', '2022-09-27 04:03:55'),
(2, 'mollitia', '2022-09-27 04:03:55', '2022-09-27 04:03:55'),
(3, 'ipsam', '2022-09-27 04:03:55', '2022-09-27 04:03:55'),
(4, 'et', '2022-09-27 04:03:55', '2022-09-27 04:03:55'),
(5, 'voluptatibus', '2022-09-27 04:03:56', '2022-09-27 04:03:56'),
(6, 'quasi', '2022-09-27 04:03:56', '2022-09-27 04:03:56'),
(7, 'qui', '2022-09-27 04:03:56', '2022-09-27 04:03:56'),
(8, 'accusamus', '2022-09-27 04:03:56', '2022-09-27 04:03:56'),
(9, 'dolorum', '2022-09-27 04:03:57', '2022-09-27 04:03:57'),
(10, 'excepturi', '2022-09-27 04:03:57', '2022-09-27 04:03:57');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `fournisseurs`
--

DROP TABLE IF EXISTS `fournisseurs`;
CREATE TABLE IF NOT EXISTS `fournisseurs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_09_01_082130_association', 1),
(6, '2022_09_12_015443_production', 1),
(7, '2022_09_12_023312_create_fournisseurs_table', 1),
(8, '2022_09_12_025715_create_products_table', 1),
(9, '2022_09_27_063003_create_categories_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `productions`
--

DROP TABLE IF EXISTS `productions`;
CREATE TABLE IF NOT EXISTS `productions` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `availability` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `namefile_img` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remarque` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `availability` tinyint(1) DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `products_category_id_foreign` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`id`, `created_at`, `updated_at`, `title`, `description`, `price`, `namefile_img`, `remarque`, `availability`, `category_id`) VALUES
(2, '2022-09-27 04:03:55', '2022-09-27 04:03:55', 'Mr.', 'Ut minima voluptatem impedit ea vel qui. Et non dolorem et nemo necessitatibus qui quam rerum. Velit excepturi repellat eius ut minus saepe aut. Suscipit sed earum delectus.', 52, 'Dr. Sabryna Wiza DVM', 'Ipsa est esse eligendi aut consequatur eveniet dolores. Est architecto ut qui explicabo. Quis dicta nulla aperiam. Sed quod autem quia rerum sit.', 0, 1),
(3, '2022-09-27 04:03:55', '2022-09-27 04:03:55', 'Ms.', 'Repellat cumque nobis deleniti esse labore qui quaerat. Tempore illo dolorem et provident. Tempora minima nulla quod omnis libero aliquam.', 1, 'Aglae Walsh DVM', 'Nobis sed distinctio et laborum aut quo est. Nobis animi dolor optio qui. Aut commodi voluptatem doloribus ipsam commodi eius. Velit rerum voluptate nulla mollitia est et.', 0, 1),
(4, '2022-09-27 04:03:55', '2022-09-27 04:03:55', 'Mr.', 'Veniam velit consequatur autem inventore. Quasi quidem reiciendis qui nihil sit veniam dolores aliquid.', 94, 'Jerod Huel', 'Neque sed ipsum est et. Nesciunt et autem accusantium excepturi tempora.', 0, 1),
(5, '2022-09-27 04:03:55', '2022-09-27 04:03:55', 'Mrs.', 'Ut autem ad nostrum enim. Necessitatibus eum quidem rerum laboriosam. Mollitia qui voluptates earum nesciunt officiis.', 84, 'Dane Koelpin', 'Et est accusamus voluptas iusto et quo perspiciatis est. Omnis dignissimos in cupiditate ullam enim inventore sed. Reprehenderit rerum quis dolore eum autem rerum. Et rem quia est.', 0, 2),
(6, '2022-09-27 04:03:55', '2022-09-27 04:03:55', 'Dr.', 'A sunt dolore et. Doloremque perspiciatis nihil et neque quidem quia et.', 11, 'Johan Hegmann', 'Quis ut inventore rerum mollitia voluptatem porro dolor. Vitae eius repudiandae aliquam at sed. Ab voluptatem dolor aliquam et et. Et et provident quidem. Nam ut quis maiores sequi.', 0, 2),
(7, '2022-09-27 04:03:55', '2022-09-27 04:03:55', 'Mr.', 'Ut fugiat iusto unde modi doloribus delectus magni. Exercitationem non aut qui numquam aspernatur. Voluptatibus porro dolores inventore expedita neque deleniti et molestias. Odit aut voluptatem aperiam similique.', 78, 'Ally McClure DVM', 'Adipisci ut totam facilis in. Magnam ipsa repellendus incidunt illo perspiciatis rerum.', 1, 2),
(8, '2022-09-27 04:03:55', '2022-09-27 04:03:55', 'Mrs.', 'Aut voluptates et sint sed itaque quo magnam. Iste enim facere sed sequi corporis. Nostrum illum pariatur a nisi consequatur temporibus et.', 63, 'Armand Pollich', 'Rerum sed dignissimos nulla provident. Quisquam et quia molestiae possimus dolor adipisci. Iusto numquam molestias dolorem ut cupiditate fugiat.', 0, 2),
(9, '2022-09-27 04:03:55', '2022-09-27 04:03:55', 'Dr.', 'Qui repudiandae unde voluptatem voluptatem illum distinctio quisquam. Natus dolores blanditiis qui est facilis eveniet harum. Assumenda voluptatibus dolores commodi veniam reprehenderit et.', 7, 'Orie Morissette', 'Aut vel aut eaque dolores nemo similique. Ducimus error tempore est distinctio. Sapiente sed dolore cupiditate sapiente.', 1, 3),
(10, '2022-09-27 04:03:55', '2022-09-27 04:03:55', 'Prof.', 'Nam rem doloremque distinctio quasi error inventore ab. Corporis repellat id vel sit natus illum voluptatem. Asperiores fugiat assumenda nobis inventore et error. Aliquid veritatis eum velit nihil ut.', 94, 'German Brown MD', 'Qui consectetur amet maiores qui inventore. Culpa cupiditate eligendi voluptatum vel rerum aliquam id. Eius aut eos repudiandae labore veniam aut id.', 0, 3),
(11, '2022-09-27 04:03:55', '2022-09-27 04:03:55', 'Prof.', 'Iste et et sed fugiat quo eaque quia. Quae neque et sed id. Eum nihil porro occaecati.', 11, 'Ms. Bulah Kiehn', 'Eaque laborum in non placeat. Nihil aut est dolor consequatur. Corrupti rerum quod et quidem quas quasi mollitia. Quibusdam quo ab quis voluptas nulla sequi porro.', 1, 3),
(12, '2022-09-27 04:03:55', '2022-09-27 04:03:55', 'Prof.', 'Error pariatur fuga reprehenderit expedita hic iste. Ad ea distinctio nam aut. Animi hic velit non molestiae neque quis qui.', 23, 'Dr. Elbert Turcotte', 'Quis odio et praesentium. Quasi nihil ea at. Et vero sunt autem fugit voluptatibus voluptatem deleniti. Inventore tempore sunt repellat.', 1, 3),
(13, '2022-09-27 04:03:55', '2022-09-27 04:03:55', 'Prof.', 'Sit quasi sit id nesciunt dolor. Eos et officia beatae sunt architecto repellat illum rerum. Dolorem autem et quo iure.', 13, 'Gerard Bosco', 'Qui iure et ipsum voluptatem. Magni facere et expedita saepe sequi dicta dicta nam. Iure architecto accusantium eum magnam expedita eum.', 1, 4),
(14, '2022-09-27 04:03:55', '2022-09-27 04:03:55', 'Prof.', 'Quia et sint sapiente commodi explicabo. Vel consequuntur deserunt autem aut quaerat. Doloribus sit reprehenderit est magnam.', 9, 'Murray Marvin', 'Consequatur deserunt fugiat earum sit quo consequatur. Ea ea tenetur quia eveniet ea tempora dolorum rerum.', 1, 4),
(15, '2022-09-27 04:03:55', '2022-09-27 04:03:55', 'Dr.', 'Qui facilis eos perferendis eum. Ipsum fugit nulla aut illum nobis qui. Ut harum odio eos rem. Quos neque atque tenetur praesentium modi dolorem.', 79, 'Hal Auer', 'Possimus amet debitis molestias. Dignissimos ea magni voluptatibus rem sed temporibus. Id at sapiente voluptas ab reprehenderit.', 1, 4),
(16, '2022-09-27 04:03:56', '2022-09-27 04:03:56', 'Miss', 'Et mollitia placeat sit cum voluptas. Voluptatibus omnis consectetur provident porro explicabo. Beatae voluptatem repellat nihil aut blanditiis. Sit ullam voluptates optio dolorem consequatur quae.', 56, 'Ernestine Leffler', 'Ducimus debitis vitae vitae maiores eaque et. Aliquid voluptatem voluptas sapiente libero. Nemo rerum voluptatem quia et placeat est laborum. Rerum et repellendus voluptatem in sed et tempore.', 0, 4),
(17, '2022-09-27 04:03:56', '2022-09-27 04:03:56', 'Mr.', 'Laudantium ratione dignissimos quas autem dolores. Laboriosam repudiandae quaerat ipsa nobis dicta. Quis similique voluptatum earum et exercitationem quia non.', 35, 'Wilber Greenfelder DVM', 'Nulla illo et quas vel ipsam in iusto. Cumque beatae consequatur odio non voluptas tempora vitae. Et natus sit labore ex et. Aperiam aspernatur quaerat eum alias.', 0, 5),
(18, '2022-09-27 04:03:56', '2022-09-27 04:03:56', 'Prof.', 'Incidunt labore voluptatem accusamus eos odio. Vero voluptatem dolores eos voluptatem ut et. Sapiente a et error eos vero dolores velit. Magnam sit quia aut fuga et qui.', 12, 'Trisha Bechtelar', 'Quo inventore magnam sit occaecati rerum. Quibusdam earum et ipsa nemo error incidunt aperiam. Reprehenderit vero voluptates et vel. Vitae necessitatibus non dignissimos laboriosam.', 1, 5),
(19, '2022-09-27 04:03:56', '2022-09-27 04:03:56', 'Dr.', 'Et tenetur ea voluptatibus excepturi doloremque modi. Natus et illum architecto accusamus necessitatibus placeat vero.', 99, 'Bernie Stiedemann I', 'Sapiente adipisci maiores enim ex est ea iste. Alias recusandae atque ea voluptatum. Consequatur itaque magnam beatae cumque commodi. Nihil est enim dolores sapiente.', 0, 5),
(20, '2022-09-27 04:03:56', '2022-09-27 04:03:56', 'Mrs.', 'Qui enim tempora ipsa omnis et. Expedita deserunt et quas et. Aliquid ducimus odit eum voluptatum id qui. Rem omnis rerum sunt aut ipsa est voluptas.', 47, 'Jalyn Koch', 'Explicabo quo expedita omnis. Aliquam nemo aut accusantium et ut. Est voluptatem et voluptatem et. Consequatur sint labore qui quia deleniti. Doloribus qui et qui atque id in omnis.', 1, 5),
(21, '2022-09-27 04:03:56', '2022-09-27 04:03:56', 'Mrs.', 'Est voluptas assumenda qui alias rerum voluptatem. Consequatur adipisci in assumenda est ab. Illum rerum illo aliquid suscipit unde ut qui harum. Recusandae sed quidem nisi at officiis dolorum.', 98, 'Nelle Purdy', 'Voluptatum est vitae sit praesentium. Aut nulla rem aliquid aut minima et molestiae. Sunt molestiae animi sequi. Est totam alias officia repellat repudiandae est voluptas vel.', 1, 6),
(22, '2022-09-27 04:03:56', '2022-09-27 04:03:56', 'Mr.', 'Et molestiae veritatis minus. Ea non numquam maxime minus dolores. Repudiandae est ut maiores voluptatem. Est error ducimus qui eos minus quod delectus.', 74, 'Brody Senger', 'Est ut deleniti recusandae placeat voluptatem. Vitae quibusdam sed omnis in doloremque autem quia. Reprehenderit veniam et reprehenderit est ex.', 0, 6),
(23, '2022-09-27 04:03:56', '2022-09-27 04:03:56', 'Prof.', 'Est consequatur quis autem neque molestias repellendus officia. Velit tempora laudantium natus aut dolorem earum. Et ad architecto sit hic aut consequatur.', 48, 'Baron Turner IV', 'Sunt eaque molestiae nam et perferendis consequatur. Sapiente minus voluptate sunt corporis aspernatur.', 0, 6),
(24, '2022-09-27 04:03:56', '2022-09-27 04:03:56', 'Ms.', 'Fuga adipisci ullam ab sed. Nisi aut numquam impedit eaque. Consequatur porro aperiam reprehenderit laudantium laboriosam maiores. Quo sint tempora rerum occaecati quo assumenda.', 69, 'Fermin Gulgowski', 'Molestias doloribus rerum pariatur dolores debitis sed eaque. Fugiat modi aspernatur dolores delectus eum quos suscipit. Dicta rerum et atque vero.', 0, 6),
(25, '2022-09-27 04:03:56', '2022-09-27 04:03:56', 'Dr.', 'Tenetur minima placeat architecto quis perspiciatis doloribus. Illo et repellendus laboriosam enim molestiae. Eius quas et ea similique non. Velit quidem aliquid ipsa labore explicabo id.', 47, 'Asha Feeney', 'Dolores occaecati voluptatem vero exercitationem. Impedit est sint laborum officiis. Aut et quam aut modi sint. Architecto voluptatem quo voluptas sapiente.', 0, 7),
(26, '2022-09-27 04:03:56', '2022-09-27 04:03:56', 'Miss', 'Vel nemo dolore praesentium dignissimos voluptatem expedita. Corporis sed sunt placeat et non incidunt minus. A dolorum a laudantium assumenda eligendi ex nemo et.', 80, 'Brenna Schuster', 'Est expedita iusto voluptate repudiandae explicabo illo. Tempora odio eum accusamus voluptatem quis culpa in odit.', 1, 7),
(27, '2022-09-27 04:03:56', '2022-09-27 04:03:56', 'Dr.', 'Quaerat dolores ipsam vel ut. Impedit autem et sed enim ut. Qui architecto reprehenderit tenetur omnis quaerat error provident dicta. Et esse dolorum illo et et aut velit.', 36, 'Davon Monahan', 'Sint vitae eos et minus. Quia excepturi necessitatibus sint. Occaecati molestiae voluptate voluptas architecto.', 0, 7),
(28, '2022-09-27 04:03:56', '2022-09-27 04:03:56', 'Dr.', 'Pariatur eveniet ipsum facere ut. Enim iste at voluptas. Dicta provident autem qui facilis quo aut. Tempora quia in exercitationem praesentium excepturi enim.', 93, 'Elna Crona V', 'Nostrum iusto ipsa vero odit laborum ut. Deleniti dolorem est hic molestiae vel inventore dolorem. Quis fugit ut sint rerum aut sapiente occaecati sed. Qui consequatur et quibusdam quis.', 1, 7),
(29, '2022-09-27 04:03:56', '2022-09-27 04:03:56', 'Prof.', 'Impedit autem voluptas cupiditate voluptas ut non vel ratione. Pariatur et nam fugiat. Quia nemo qui optio modi dicta ad. Accusantium magnam fugit fugiat aut incidunt quo.', 61, 'Ms. Charlene Satterfield Sr.', 'Porro ut ut eos rerum porro maiores. Omnis voluptates ut excepturi iure omnis deleniti ut. Itaque laboriosam soluta numquam placeat aliquid alias.', 0, 8),
(30, '2022-09-27 04:03:56', '2022-09-27 04:03:56', 'Dr.', 'A vel sed ipsam autem sit asperiores. Earum reiciendis inventore est consequatur. Corporis sit eius magnam sit.', 75, 'Emma Schmitt', 'In debitis qui sapiente sed similique. Possimus et aliquam repellendus qui odio quisquam quia eos. Quae qui deserunt harum iste sapiente nesciunt.', 1, 8),
(31, '2022-09-27 04:03:56', '2022-09-27 04:03:56', 'Mrs.', 'Vel est velit accusamus amet aut error dolore omnis. Harum velit rem ipsum rerum. Nostrum fugiat odit non eos.', 50, 'Judge Hilpert V', 'Natus assumenda error recusandae voluptates non ipsum. Ut qui consequuntur amet tenetur quo aliquam ut. Unde ut sint facilis ad. Voluptas quia nisi nobis consequuntur.', 1, 8),
(32, '2022-09-27 04:03:56', '2022-09-27 04:03:56', 'Prof.', 'Libero voluptas omnis et dolorem blanditiis dolorem quam. Non officiis sit quia fugiat exercitationem. Consequuntur eaque quo est facilis et. Aperiam esse corporis qui tempora quasi nam sit.', 50, 'Valerie Nolan', 'Odio possimus est commodi laboriosam rerum. Consequatur ea vitae et quod commodi. Vel ab repellendus ab non et. Delectus quia mollitia sit tempora quo laudantium quis.', 0, 8),
(33, '2022-09-27 04:03:57', '2022-09-27 04:03:57', 'Dr.', 'Nobis omnis tempora consequatur tempora ducimus nihil. Excepturi voluptatem iure eos error hic. Beatae rem et quis at officia. Assumenda ut accusamus eaque atque consequatur. Officia sapiente id cumque expedita cum expedita.', 81, 'Mr. Darrel Barrows I', 'Distinctio qui unde sunt velit. Ut at beatae rerum cumque qui fugit nobis. Quidem aliquid veniam architecto sequi doloremque.', 0, 9),
(34, '2022-09-27 04:03:57', '2022-09-27 04:03:57', 'Prof.', 'Aperiam dolorem quam nostrum optio debitis recusandae possimus itaque. Aliquam ipsam deserunt minima quae. Cupiditate in ut quis doloribus eos dolores.', 28, 'Wava Smitham', 'Aliquid provident quas sed reiciendis. Non quasi quo quibusdam ab ea. Eveniet eaque consequuntur dolorem error quo.', 0, 9),
(35, '2022-09-27 04:03:57', '2022-09-27 04:03:57', 'Prof.', 'Qui voluptates perferendis nostrum repudiandae itaque ipsam quia. Occaecati alias rerum enim dolorem error doloribus. Corporis expedita nesciunt ut enim.', 42, 'Pietro Funk', 'Dignissimos dolores et similique quasi nihil minus sint autem. Tempore ipsum est maiores dignissimos. Et ratione maiores eum deleniti aliquam. Ducimus reiciendis delectus alias architecto itaque et.', 1, 9),
(36, '2022-09-27 04:03:57', '2022-09-27 04:03:57', 'Mrs.', 'Deserunt rerum sit soluta enim modi corporis. Magni sint magnam ipsum voluptatem id cumque laudantium excepturi. Nihil occaecati dolorum voluptatibus. Nam velit sed maxime ratione ut deserunt porro. Asperiores rerum eius in deserunt id.', 50, 'Godfrey Ziemann', 'Ut ea aut quia quaerat voluptatem aut. Voluptas rem sapiente sint sunt nesciunt vel voluptas. Nisi perspiciatis et ut velit sed officia provident.', 0, 9),
(37, '2022-09-27 04:03:57', '2022-09-27 04:03:57', 'Prof.', 'Et voluptas ut voluptate voluptatum rem tempora hic. Fuga est nam enim dolore recusandae vero. Repellendus reprehenderit vitae cum suscipit eveniet. Dolorem aut aspernatur numquam pariatur ut perferendis distinctio.', 92, 'Prof. Toni Kihn', 'Est exercitationem rerum hic qui illum in nesciunt excepturi. Est nihil atque accusamus nemo qui vel. Ex in perspiciatis est eveniet ut. Porro est odit velit sunt.', 1, 10),
(38, '2022-09-27 04:03:57', '2022-09-27 04:03:57', 'Ms.', 'Deserunt incidunt in deserunt aspernatur sed. Totam qui fuga perferendis. Est id facere rem temporibus accusamus. Quisquam suscipit ea qui ipsa velit aut atque.', 59, 'Merritt Heller', 'Tempore totam sequi sint voluptas asperiores et. Harum quam aut reiciendis ut natus.', 1, 10),
(39, '2022-09-27 04:03:57', '2022-09-27 04:03:57', 'Dr.', 'Quasi inventore veritatis dolore alias non est. Odio unde expedita ipsam odit ad non omnis velit. Saepe ut pariatur sed natus sunt et cumque. Est dolores suscipit deserunt vel.', 52, 'Mr. Hailey Schmeler', 'Necessitatibus necessitatibus ut quisquam. Sed ut et sit consequatur suscipit repellendus dolorem. Neque numquam reprehenderit debitis veritatis eum. Nobis inventore in unde libero.', 0, 10),
(40, '2022-09-27 04:03:57', '2022-09-27 04:03:57', 'Mrs.', 'Voluptatem cumque omnis natus itaque odit. Dolore ipsa dignissimos totam dignissimos. Tempore ut vel ea sint et in quos. Quibusdam molestias necessitatibus enim temporibus facilis maiores.', 84, 'Dr. Lafayette Ebert Jr.', 'Optio neque molestias illum et sunt. Voluptate atque sed ea perferendis doloremque praesentium expedita nisi. Enim excepturi id ut aut nobis et. Quia expedita qui fugiat enim nulla fugiat sequi sint.', 1, 10),
(41, '2022-10-05 06:18:11', '2022-10-05 06:18:11', 'testmodif', 'test', 1000, 'test', 'remarque', 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
