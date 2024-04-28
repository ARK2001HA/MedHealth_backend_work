-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 07, 2024 at 04:44 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `medhealth`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id_cart` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id_cart`, `id_user`, `id_product`, `quantity`, `price`, `created_at`) VALUES
(38, 3, 6, 1, 4310, '2024-03-20 13:13:30'),
(41, 5, 14, 2, 180, '2024-03-22 01:19:50');

-- --------------------------------------------------------

--
-- Table structure for table `category_product`
--

CREATE TABLE `category_product` (
  `id_category` int(11) NOT NULL,
  `category` varchar(150) NOT NULL,
  `image` text NOT NULL,
  `status` enum('on','off') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category_product`
--

INSERT INTO `category_product` (`id_category`, `category`, `image`, `status`) VALUES
(1, 'Antibiotics', 'assets/img_antibiotics.png', 'on'),
(2, 'Vitamins', 'assets/img_vitamins.png', 'on'),
(3, 'Digestive', 'assets/img_digestive.png', 'on'),
(4, 'Skin', 'assets/img_skin.png', 'on'),
(5, 'Cough and Flu', 'assets/img_cough_flu.png', 'on'),
(6, 'Fever', 'assets/img_fever.png', 'on'),
(7, 'Antiseptics', 'assets/img_antiseptics.png', 'on'),
(8, 'Covid-19 Info', 'assets/img_covid.png', 'on');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id_orders` int(11) NOT NULL,
  `invoice` varchar(20) NOT NULL,
  `id_user` int(11) NOT NULL,
  `order_at` datetime NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id_orders`, `invoice`, `id_user`, `order_at`, `status`) VALUES
(2, '20240320083409', 5, '2024-03-20 13:04:09', 1),
(3, '20240320083412', 5, '2024-03-20 13:04:12', 1),
(4, '20240320083501', 5, '2024-03-20 13:05:01', 1),
(5, '20240320084343', 3, '2024-03-20 13:13:43', 1),
(6, '20240320122222', 5, '2024-03-20 16:52:22', 1),
(7, '20240320145143', 5, '2024-03-20 19:21:43', 1),
(8, '20240320145144', 5, '2024-03-20 19:21:44', 1),
(9, '20240321165656', 5, '2024-03-21 21:26:56', 1),
(10, '20240321195237', 5, '2024-03-22 00:22:37', 1),
(11, '20240321202303', 5, '2024-03-22 00:53:03', 1),
(12, '20240321202304', 5, '2024-03-22 00:53:04', 1),
(13, '20240321202313', 5, '2024-03-22 00:53:13', 1),
(14, '20240321202732', 5, '2024-03-22 00:57:32', 1),
(15, '20240321202733', 5, '2024-03-22 00:57:33', 1),
(16, '20240321202757', 5, '2024-03-22 00:57:57', 1),
(17, '20240321202758', 5, '2024-03-22 00:57:58', 1),
(18, '20240321202816', 5, '2024-03-22 00:58:16', 1),
(19, '20240321202816', 5, '2024-03-22 00:58:16', 1),
(20, '20240321202915', 5, '2024-03-22 00:59:15', 1),
(21, '20240321202918', 5, '2024-03-22 00:59:18', 1),
(22, '20240321203005', 5, '2024-03-22 01:00:05', 1),
(23, '20240321203337', 5, '2024-03-22 01:03:37', 1),
(24, '20240321204956', 5, '2024-03-22 01:19:56', 1),
(25, '20240321204957', 5, '2024-03-22 01:19:57', 1),
(26, '20240321204957', 5, '2024-03-22 01:19:57', 1),
(27, '20240321211552', 5, '2024-03-22 01:45:52', 1),
(28, '20240324120234', 6, '2024-03-24 16:32:34', 1),
(29, '20240324121319', 6, '2024-03-24 16:43:19', 1),
(30, '20240324121812', 6, '2024-03-24 16:48:12', 1),
(31, '20240324123836', 6, '2024-03-24 17:08:36', 1),
(32, '20240324125153', 6, '2024-03-24 17:21:53', 1),
(33, '20240324130131', 6, '2024-03-24 17:31:31', 1),
(34, '20240324130232', 6, '2024-03-24 17:32:32', 1),
(35, '20240327144741', 7, '2024-03-27 19:17:41', 1),
(36, '20240405090640', 8, '2024-04-05 12:36:40', 1);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id_orders` int(11) NOT NULL,
  `invoice` varchar(20) NOT NULL,
  `id_product` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id_orders`, `invoice`, `id_product`, `quantity`, `price`) VALUES
(1, '20240324121319', 16, 2, 30),
(2, '20240324121319', 14, 1, 180),
(3, '20240324121812', 6, 1, 4310),
(4, '20240324123836', 5, 1, 24),
(5, '20240324125153', 4, 1, 23),
(6, '20240324130131', 10, 1, 1250),
(7, '20240324130131', 11, 2, 40),
(8, '20240324130232', 3, 1, 28),
(9, '20240327144741', 19, 2, 45),
(10, '20240327144741', 3, 1, 28),
(11, '20240405090640', 6, 2, 4310);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id_product` int(11) NOT NULL,
  `id_category` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `image` text NOT NULL,
  `price` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id_product`, `id_category`, `name`, `description`, `image`, `price`, `status`, `created_at`) VALUES
(1, 1, 'AMOXSAN 500 MG 10 CAPSULES', 'AMOXSAN is an antibiotic drug containing Amoxicillin 500 mg. Amoxicillin is a penicillin derivative with broad-spectrum antibacterial activity.\r\nThis drug is an effective bactericidal agent against Gram-negative and Gram-positive bacteria such as Staphylococci, Streptococci, Enterococci, S. pneumoniae, N. gonorrhea, H influenzas, E. coli, and P. mirabilis.\r\nWhen using this medication, you must ACCORD TO THE DOCTOR\'S INSTRUCTIONS.', 'https://d2qjkwm11akmwu.cloudfront.net/products/a4f4d159-2e8b-4f00-8ba4-605099e3d839_product_image_url.webp', 1400, 1, '2021-04-02 09:49:21'),
(2, 1, 'ZITROLIN CAPLET 500 MG', 'ZITROLIN is a drug containing Azithromycin in the form of film-coated caplets. Azithromycin is a macrolide antibiotic that is given orally.\r\nThe mechanism of action of azithromycin is by binding to the 50 S ribosomal subunit, thus interfering with bacterial protein synthesis. This drug is used for therapy with mild to moderate infections, upper and lower respiratory tract, skin and soft tissue, and sexually transmitted diseases.\r\nWhen using this medication, you must ACCORD TO THE DOCTOR\'S INSTRUCTIONS.\r\n', 'https://d2qjkwm11akmwu.cloudfront.net/products/f9bf636d-22bb-4761-9448-9d436338ee5c_product_image_url.webp', 110, 1, '2021-04-02 09:50:38'),
(3, 1, 'AMOXSAN DRY SYRUP 60 ML', 'AMOXSAN is an antibiotic drug that contains Amoxicillin 125 mg per 5 ml. Amoxicillin is a penicillin derivative with broad-spectrum antibacterial activity.\r\nThis drug is an effective bactericidal against Gram-negative and Gram-positive bacteria such as Staphylococci, Streptococci, Enterococci, S. pneumoniae, N. gonorrhea, H influenzas, E. coli, and P. mirabilis.\r\nWhen using this medication, you must ACCORD TO THE DOCTOR\'S INSTRUCTIONS.', 'https://d2qjkwm11akmwu.cloudfront.net/products/cef941df-136a-41c7-b44a-449ba346da57_product_image_url.webp', 28, 1, '2021-04-02 09:51:29'),
(4, 1, 'AMOXICILLIN 250 MG 10 CAPSULE', 'AMOXICILLIN is an antibiotic that contains the active substance Amoxicillin. Amoxicillin belongs to the group of beta-lactam antibiotics derived from ampicillin.\r\nThis drug is used for upper respiratory tract infections, otitis media, acute and chronic bronchitis, pneumonia, cystitis, urethritis, pyelonephritis, asymptomatic bacteriuria during pregnancy, gonorrhea, and skin and soft tissue infections.\r\nAmoxicillin has a spectrum similar to ampicillin, namely gram-positive and gram-negative. Works by binding to penicillin-binding protein which inhibits the transpeptidation process (cross-linking process in cell wall synthesis), activating autolysis enzymes in bacterial cell walls. This process causes lysis of the cell wall and destruction of the bacterial cell.\r\nWhen using this medication, you must ACCORD TO THE DOCTOR\'S INSTRUCTIONS.', 'https://d2qjkwm11akmwu.cloudfront.net/products/2cdeb522-60e3-4ac7-b5f6-7a374ae52777_product_image_url.webp', 23, 1, '2021-04-02 09:53:21'),
(5, 1, 'AMOXICILLIN SYRUP 125 MG 60ML', 'AMOXICILLIN SYRUP 125 MG/5 ML is a generic antibiotic drug derived from Penicillin with broad-spectrum antibacterial activity.\r\nThis drug is an effective bactericidal agent against Gram-negative and Gram-positive bacteria such as Staphylococci, Streptococci, Enterococci, S. pneumoniae, N. gonorrhea, H influenzas, E. coli, and P. mirabilis.\r\nWhen using this medication, you must ACCORD TO THE DOCTOR\'S INSTRUCTIONS.', 'https://d2qjkwm11akmwu.cloudfront.net/products/4c1bff61-da76-49cd-a1d8-513eb75db4e4_product_image_url.webp', 24, 1, '2021-04-02 09:54:38'),
(6, 2, 'PHARMATON FORMULA 5 CAPSULE', 'PHARMATON FORMULA is a combination of multivitamins, minerals, and ginseng extract which is effective in reducing fatigue, increasing stamina during physical activity, supporting memory and learning abilities, and helping stabilize emotions.', 'https://d2qjkwm11akmwu.cloudfront.net/products/81e69e67-a485-4a77-bab7-c9e6577b00cd_product_image_url.webp', 4310, 1, '2021-04-02 09:56:53'),
(7, 2, 'IMBOOST FORCE EXTRA STRENGTH 10 TABLET', 'IMBOOST FORCE EXTRA STRENGTH TABLET is a supplement containing Echinacea purpurea dry herb extract, Black elderberry fruit dry extract, and Zn Piccolinate in the form of film-coated caplets. This supplement is used to help increase and maintain the body\'s immune system, thereby preventing illness and speeding up healing.\r\nImboost extra strength works quickly to activate the immune system directly in our body\'s defense system by increasing antibodies so that the body\'s resistance is stronger against virus attacks.', 'https://d2qjkwm11akmwu.cloudfront.net/products/bb39638d-3536-4cd7-934a-519ccc96dc4e_product_image_url.webp', 595, 1, '2021-04-02 09:57:57'),
(8, 2, 'HOLISTICARE ESTER C 30 TABLET', 'HOLISTICARE ESTER C TABLET is a supplement that contains Vitamin C in ester form, so it is safer in the stomach and absorption in the bloodstream is faster, and lasts in the body 2 times longer than regular vitamin C (in the form of Ascorbic Acid).\r\nThe vitamin C content in this supplement plays a role as an antioxidant for the body. In addition, this supplement is used to maintain the body\'s immune system and overcome symptoms of vitamin C deficiency.', 'https://d2qjkwm11akmwu.cloudfront.net/products/093cc977-5cb3-44e3-b225-f233a8969faa_product_image_url.webp', 1200, 1, '2021-04-02 09:57:57'),
(9, 2, 'Enervon Multivitamins 30tabs Pack of 2', 'ENERVON C is a food supplement containing multivitamins such as Vitamin C, Vitamin B1, Vitamin B2, Vitamin B6, Vitamin B12, Vitamin D, Niacinamide, Calcium pantothenate in coated tablet form.\r\nThis vitamin supplement is useful for helping maintain the body\'s immune system. A combination of vitamins C and B complex which is needed for bodies that lack vitamins, so that the body\'s immune system is maintained and helps restore conditions after illness.', 'https://d2qjkwm11akmwu.cloudfront.net/products/ceaa46b9-b668-4d9b-988f-909c0d42a141_product_image_url.webp', 4309, 1, '2021-04-02 10:00:05'),
(10, 2, 'REDOXON TRIPLE ACTION EFFERVESCENT 10 TABLET', 'REDOXON TRIPLE ACTION EFFERVESCENT is equipped with Vitamin D which works together with Vitamin C and Zinc, helping to maintain the body\'s resistance during travel, changing weather conditions, and exposure to pollution. Vitamin C is useful for helping the body\'s endurance and health and acts as an antioxidant to ward off free radicals.\r\nVitamin D is useful for helping the performance of white blood cell groups in maintaining the body\'s immune system. Zinc helps the performance of vitamin C, making it more effective in maintaining the body\'s immune system, and Zinc is a substance that the body does not produce.\r\nIf food intake is not sufficient for daily needs, if necessary, supplementation can be given.', 'https://d2qjkwm11akmwu.cloudfront.net/products/5753ee0c-1f3e-47c5-a0e0-e12d5e070001_product_image_url.webp', 1250, 1, '2021-04-02 10:00:05'),
(11, 3, 'POLYSILANE SYRUP 100 ML', 'POLYSILANE SYRUP is an ulcer and anti-bloating medicine containing Dimethylpolysiloxane, Aluminum hydroxide, and Magnesium hydroxide in syrup form.\r\nThis drug is used to reduce symptoms associated with excess stomach acid, gastritis, stomach ulcers, and duodenum ulcers, with symptoms such as nausea, stomach pain, heartburn, bloating, and a feeling of fullness in the stomach.', 'https://d2qjkwm11akmwu.cloudfront.net/products/b9b8f712-95a3-43eb-b511-e6ee9159c18c_product_image_url.webp', 40, 1, '2021-04-02 10:04:20'),
(12, 3, 'Antacid Tablets, 10 X 10 Tablet', 'DOEN ANTACIDE is a chewable tablet containing Aluminum Hydroxide and Magnesium Hydroxide. This drug is used to treat ulcers with symptoms of heartburn, frequent belching, and flatulence.', 'https://d2qjkwm11akmwu.cloudfront.net/products/e23de753-b921-4b65-b505-6480bbc29640_product_image_url.webp', 590, 1, '2021-04-02 10:04:20'),
(13, 3, 'PROMAG 12 TABLET', 'PROMAG is a drug containing Hydrotalcite, Mg(OH)2, and Simethicone in tablet form. This drug is used to reduce symptoms associated with excess stomach acid, gastritis, stomach ulcers, and duodenum ulcers. Symptoms such as nausea, stomach pain, heartburn, bloating, and a feeling of fullness in the stomach.', 'https://d2qjkwm11akmwu.cloudfront.net/products/630231_1-4-2019_18-19-5.jpg', 70, 1, '2021-04-02 10:04:20'),
(14, 4, 'DERMATIX ULTRA GEL 15 G', 'DERMATIX ULTRA GEL 15 G is a drug used to help disguise and even remove scars.', 'https://d2qjkwm11akmwu.cloudfront.net/products/4e225a58-5096-40db-bc4b-45caead0ef98_product_image_url.webp', 180, 1, '2021-04-02 10:09:16'),
(15, 4, 'KALPANAX K CREAM 5 G', 'KALPANAX K CREAM contains Miconazole which is an imidazole anti-fungal drug, used to treat skin diseases caused by fungal infections.', 'https://d2qjkwm11akmwu.cloudfront.net/products/968bf501-99d8-4045-849c-cc406f356077_product_image_url.webp', 80, 1, '2021-04-02 10:09:16'),
(16, 5, 'BISOLVON EXTRA SYRUP 60 ML', 'BISOLVON EXTRA SYRUP contains Bromhexine HCl and Guaifenesin. This medicine is used to treat coughs with phlegm and works as a pectolytic (mucolytic) and expectorant to relieve coughs with phlegm and make it easier to expel phlegm when coughing.\r\nThis medicine will help with 3 working steps, namely: by releasing, thinning, and expelling phlegm, so that the phlegm can be easily expelled.', 'https://d2qjkwm11akmwu.cloudfront.net/products/208a7044-dbea-4614-af2d-ba4ede65ba53_product_image_url.webp', 30, 1, '2021-04-02 10:11:34'),
(17, 5, 'OBH COMBI PLUS BATUK FLU MENTHOL 100 ML', 'OBH COMBI PLUS BATUK FLU is a medicine used to relieve coughs accompanied by flu symptoms such as fever, headache, blocked nose and sneezing. OBH Combi Plus Cough Flu Menthol works as an expectorant (helps expel phlegm), antihistamine (reduces allergy symptoms, analgesic-antipyretic (reduces heat, and fever, and relieves headaches), and nasal decongestant (loosens the respiratory tract).', 'https://d2qjkwm11akmwu.cloudfront.net/products/5c4dad7f-9fc9-4c50-bfca-35c78033c8a6_product_image_url.webp', 20, 1, '2021-04-02 10:12:21'),
(18, 5, 'PANADOL Cold And Flu Tablet 10x10', 'PANADOL COLD & FLU is a medicine containing Paracetamol, Pseudoephedrine HCl, and Dextromethorphan HBr. This drug can be used to relieve symptoms of nasal congestion, cough without phlegm, and fever that accompany the flu.', 'https://d2qjkwm11akmwu.cloudfront.net/products/f263dead-9753-4520-a07f-b4aaec689d2c_product_image_url.webp', 50, 1, '2021-04-02 10:12:21'),
(19, 6, 'PARACETAMOL 500 MG 10 TABLET', 'PARACETAMOL TABLET is a drug that can be used to relieve the pain of headaches, and toothaches, and reduce fever. Paracetamol as an analgesic, works by increasing the pain threshold and as an antipyretic which is thought to work directly on the heat regulation center in the hypothalamus.', 'https://d2qjkwm11akmwu.cloudfront.net/products/de2e8223-2622-4861-a47f-64b14e8ed8d5_product_image_url.webp', 45, 1, '2021-04-02 10:14:23'),
(20, 6, 'Acetaminophen oral capsule 325 mg', 'Acetaminophen is a pain reliever and a fever reducer.\r\n\r\nAcetaminophen is used to treat mild to moderate pain, moderate to severe pain in conjunction with opiates, or to reduce fever. Common conditions treated include headache, muscle aches, arthritis, backache, toothaches, sore throat, colds, flu, and fevers.', 'https://d2qjkwm11akmwu.cloudfront.net/products/8f3609e7-20ca-468f-a7ac-8d3360ece9d0_product_image_url.webp', 325, 1, '2021-04-02 10:14:23'),
(21, 6, 'IBUPROFEN 400 MG 10 TABLET', 'IBUPROFEN is a generic drug which at levels of 400 mg or more is used for pain and inflammation as the main symptoms. This drug is used as an analgesic, namely to relieve mild to moderate pain, including headache pain, menstrual pain, pain from dental disease or tooth extraction, and pain after surgery.\r\nApart from that, this drug is used as an analgesic and anti-inflammatory by alleviating the symptoms of rheumatic diseases of the bones, joints, and joints, alleviating symptoms due to muscle and bone/joint trauma. Ibuprofen is a class of non-steroidal anti-inflammatory drugs that have anti-inflammatory, analgesic, and antipyretic effects. This drug works by inhibiting prostaglandins.\r\nWhen using this medication, you must ACCORD TO THE DOCTOR\'S INSTRUCTIONS.', 'https://d2qjkwm11akmwu.cloudfront.net/products/7689ed7d-1187-46a8-b919-978989e010ea_product_image_url.webp', 70, 1, '2021-04-02 10:15:54'),
(22, 7, 'BETADINE SKIN CLEANSER ANTISEPTIC 100 ML', 'BETADINE SKIN CLEANSER ANTISEPTIC 100 ML antiseptic liquid soap containing Povidone iodine 7.5% to treat skin problems such as acne and itching, disinfect hands before surgery, and maintain healthy skin.', 'https://d2qjkwm11akmwu.cloudfront.net/products/bc8da276-31b7-4148-9254-5229e3d25dea_product_image_url.webp', 99, 1, '2021-04-02 10:17:36'),
(23, 7, 'DETTOL ANTISEPTIC CARE 245 ML', 'LIQUID ANTISEPTIC DETTOL is a liquid antiseptic that is used as protection against diseases caused by germs. This liquid can also be used to speed up the healing of wounds, abrasions, bites, insect stings, kill germs on dirty clothes, and as a disinfectant for household equipment.', 'https://d2qjkwm11akmwu.cloudfront.net/products/02ac32c9-de61-4d68-91cf-92b4ed77525d_product_image_url.webp', 135, 1, '2021-04-02 10:17:36'),
(24, 7, 'GERMOLENE Antiseptic Cream 30g PACK OF 2 (60GM)', 'Germolene Antiseptic Cream is used to ease pain and help prevent infections of minor cuts and grazes, minor burns, scalds, blisters, stings insect bites, spots, and chapped or rough skin.', 'https://d2qjkwm11akmwu.cloudfront.net/products/d138f207-6671-4d53-b372-497cc51a265d_product_image_url.webp', 90, 1, '2021-04-02 10:19:29');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `password` text NOT NULL,
  `created_at` datetime NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `name`, `email`, `phone`, `address`, `password`, `created_at`, `status`) VALUES
(3, 'Anand Raj Keshari', 'ark@gmail.com', '8240565064', 'Kolkata', 'a9f929296527a6de1dc312b318b4700c', '2024-03-02 17:12:09', 1),
(5, 'Ajeet Kumar', 'ajeet@gmail.com', '8765432190', 'Bihar', 'f69f6d864f96a581883efd8db024be47', '2024-03-19 12:55:26', 1),
(6, 'Anand Raj Keshari', 'anandrajkeshari2001@gmail.com', '8240567082', '86, Nivedita Park, Saparaypur, Mollargate Kolkata-700142', '62accaf23ac9a73c0b28765b7dfaf75a', '2024-03-21 22:36:14', 1),
(7, 'Nurasn', 'nur2001@gmail.com', '8765544789', 'Kolkata', '25f9e794323b453885f5181f1b624d0b', '2024-03-27 19:16:22', 1),
(8, 'Dikshya Shaw', 'shaw@gmail.com', '9876543210', 'Kolkata 700038', '1f17dd6b25af64bc314d54215191804b', '2024-04-05 11:20:59', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id_cart`);

--
-- Indexes for table `category_product`
--
ALTER TABLE `category_product`
  ADD PRIMARY KEY (`id_category`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id_orders`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id_orders`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id_product`),
  ADD KEY `id_category` (`id_category`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id_cart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `category_product`
--
ALTER TABLE `category_product`
  MODIFY `id_category` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id_orders` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id_orders` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id_product` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`id_category`) REFERENCES `category_product` (`id_category`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
