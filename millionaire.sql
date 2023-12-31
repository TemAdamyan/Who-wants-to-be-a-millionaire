-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jul 09, 2023 at 09:10 PM
-- Server version: 5.7.39
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `millionaire`
--

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question_id` bigint(20) UNSIGNED NOT NULL,
  `answer1` text NOT NULL,
  `answer2` text NOT NULL,
  `answer3` text NOT NULL,
  `answer4` text NOT NULL,
  `right_answer` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`id`, `question_id`, `answer1`, `answer2`, `answer3`, `answer4`, `right_answer`) VALUES
(1, 1, '1960-1961', '1963-1964', '1958-1959', '1966-1967', 1),
(2, 2, 'Մարիո Զագալո', 'Դիեգո Մարադոնա', 'Պելե', 'Ֆրանց Բեկենբաուեր', 1),
(3, 3, 'Մայքլ Ջորդան', 'Կարիմ Աբդուլ-Ջաբբար', 'Կոբի Բրայանտ', 'Շաքիլ ՕՆիլ', 2),
(4, 4, 'Հնդկաստան', 'Անգլիա', 'Ավստրալիա', 'Հարավային Ամերիկա', 3),
(5, 5, 'Սեբաստիան Ֆետել', 'Այրթոն Սեննա', 'Լյուիս Հեմիլթոն', 'Ֆերնանդո Ալոնսո', 3),
(6, 6, 'Մեննի Պակյաո', 'Մայք Թայսոն', 'Մուհամմեդ Ալի', 'Ֆլոյդ Մայվեդեր', 1),
(7, 7, 'Ֆուտբոլ', 'Բասկետբոլ', 'Կրիկետ', 'Թենիս', 1),
(8, 8, 'Բրազիլիա', 'Գերմանիա', 'Իտալիա', 'Արգենտինա', 1),
(9, 9, 'Բադմինտոն', 'Սեղանի թենիս', 'Սքվոշ', 'Վոլեյբոլ', 1),
(10, 10, 'Թայգեր Վուդս', 'Ջեք Նիկլաուս', 'Առնոլդ Պալմեր', 'Ֆիլ Միքելսոն', 2),
(11, 11, 'Գոլֆ', 'Բոուլինգ', 'Թենիս', 'Բեյսբոլ', 3),
(12, 12, 'Մայքլ Ֆելփս (լող)', 'ՈՒսեյն Բոլտ (թեթևատլետ)', 'Սիմոն Բայլս (մարմնամարզություն)', 'Սերենա Ուիլյամս (թենիս)', 1),
(13, 13, 'Բասկետբոլ', 'Ռեգբի', 'Վոլեյբոլ', 'Բադմինտոն', 2),
(14, 14, 'Կրիկետ', 'Ֆուտբոլ', 'Բասկետբոլ', 'Լող', 1),
(15, 15, 'Չինաստան', 'Ճապոնիա', 'Ռուսաստան', 'Բրազիլիա', 2),
(16, 16, 'Վինսենթ վան Գոգ', 'Պաբլո Պիկասո', 'Լեոնարդո դա Վինչի', 'Միքելանջելո', 3),
(17, 17, "Կլոդ Մոնե", "Վինսենթ վան Գոգ", "Էդվարդ Մունկ", "Ջորջիա Օ'Քիֆ", 2),
(18, 18, 'Պաբլո Պիկասո', 'Վասիլի Կանդինսկի', 'Անրի Մատիս', 'Պոլ Սեզան', 1),
(19, 19, 'Նար-Դոս', 'Շիրվանզադե', 'Ավ. Իսահակյան', 'Գ. Զոհրապ', 2),
(20, 20, 'Սասունցի Դավիթ', 'Վարդան Մամիկոնյան', 'Կիբեռնետիկայի մուսան', 'Բարեկամության ձեռքեր', 4),
(21, 21, 'Իմպրեսիոնիզմ', 'Դադաիզմ', 'Փոփ Արտ', 'Սյուրռեալիզմ', 4),
(22, 22, 'Լեոնարդո դա Վինչի', 'Վինսենթ վան Գոգ', 'Կլոդ Մոնե', 'Սալվադոր Դալի', 1),
(23, 23, 'Սթիվեն Ֆոսթեր', 'Սթիվեն Քինգ', 'Սթիվեն Հոքինգ', 'Սթիվեն Քրեյն', 2),
(24, 24, 'Օգյուստ Ռոդեն', 'Ալբերտո Ջակոմետի', 'Կոնստանտին Բրանկուզի', 'Ժան-Բատիստ Կարպե', 1),
(25, 25, '4', '6', '7', '9', 3),
(26, 26, 'Օգյուստ Ռոդեն', 'Լորենցո Բերնինի', 'Դոնատելլո', 'Միքելանջելո', 4),
(27, 27, 'Սանդրո Բոտիչելի', 'Ռաֆայել', 'Լեոնարդո դա Վինչի', 'Միքելանջելո', 4),
(28, 28, 'Սալվադոր Դալի', 'Լեոնարդո դա Վինչի', 'Յոհաննես Վերմեր', 'Միքելանջելո', 3),
(29, 29, 'Իմպրեսիոնիզմ', 'Կուբիզմ', 'Սյուրռեալիզմ', 'Էքսպրեսիոնիզմ', 1),
(30, 30, 'Էնդի Ուորհոլ', 'Սալվադոր Դալի', 'Ֆրիդա Կահլո', 'Ջեքսոն Փոլոք', 1),
(31, 31, 'Արտյոմ Օգանով', 'Յուրի Հովհաննիսյան', 'Պիեր Կյուրի', 'Ալեքս Ֆրեդրիկ Քրոնստեդտ', 2),
(32, 32, 'Մարս', 'Վեներա', 'Յուպիտեր', 'Սատուրն', 3),
(33, 33, 'Ֆոտոսինթեզ', 'Շնչառություն', 'Տրանսպիրացիա', 'Խմորում', 1),
(34, 34, '100°C', '0°C', '20°C', 'ցանկացած', 4),
(35, 35, '96', '107', '118', '201', 3),
(36, 36, 'Մոլեկուլ', 'Բջիջ', 'Ատոմ', 'Պրոտոն', 3),
(37, 37, 'D', 'B1', 'C', 'A', 4),
(38, 38, 'Գլյուկոզի', 'Օդի', 'Սախարոզի', 'Սոդայի', 2),
(39, 39, 'Ալոտրոպիա', 'Ադսորբցիա', 'Սուբլիմացիա', 'Իզոմերիա', 1),
(40, 40, 'Տլ (Տեսլա)', 'Վբ (Վեբեր)', 'Վ (Վոլտ)', 'Վտ (Վատտ)', 1),
(41, 41, 'Ի․ Միչուրինը', 'Ս. Վայնբերգը', 'Ի. Շմալգաուզենը', 'Հ. դե Ֆրիզը', 4),
(42, 42, 'Ածուխ', 'Բնական գազ', 'Միջուկային էներգիա', 'Արևային էներգիա', 4),
(43, 43, 'Աջ ձեռքի կանոն', 'Ձախ ձեռքի կանոն', 'Խցանահանի կանոն', 'Մագնիսական սլաքի ուղղության կանոն', 4),
(44, 44, 'Ալդեհիդներ', 'Կետոններ', 'Ալկեններ', 'Սպիրտներ', 1),
(45, 45, 'Սպիտակուցներ', 'Ֆերմենտներ', 'ԴՆԹ', 'ՌՆԹ', 3),
(46, 46, 'Stack', 'Queue', 'List', 'Tree', 1),
(47, 47, 'print()', 'echo()', 'printf()', 'write()', 1),
(48, 48, '+', '-', '*', '/', 1),
(49, 49, 'Hyper Text Markup Language', 'Home Tool Markup Language', 'Hyperlinks and Text Markup Language', 'Hyperlinks and Tags Markup Language', 1),
(50, 50, '//', '/*', '#', '--', 1),
(51, 51, 'Հիշողության վայրի հասցեի ցուցիչ', 'Զանգվածի տարրի եզակի ID-ն', 'Թիվ, որը նշում է զանգվածի տարրի հերթականությունը', 'Զանգվածի չափը բայթերով', 3),
(52, 52, 'Java', 'C++', 'Python', 'C#', 3),
(53, 53, 'Int', 'Float', 'String', 'Boolean', 2),
(54, 54, '==', '!=', '>', '<', 1),
(55, 55, 'Սահմանում է հանգույցի կատարման պայման', 'Սահմանում է փոփոխական', 'Սահմանում է ֆունկցիա', 'Սահմանում է հանձնարարական գործողություն', 1),
(56, 56, 'Ինչպես փոխանցել տվյալները տարբեր գործառույթների միջև', 'Գործողությունները կրկնելու համար օղակների օգտագործումը', 'Իր մարմնում ֆունկցիայի փոխանցումը իրեն', 'Կատարված գործողությունների պատմության պահպանման եղանակը', 3),
(57, 57, 'Stack', 'Queue', 'Hash table', 'Tree', 3),
(58, 58, 'Ժառանգություն', 'Պոլիմորֆիզմ', 'Էնկապսուլյացիա', 'Ասոցիացիա', 3),
(59, 59, 'Կառուցվածքներում տվյալների կազմակերպման եղանակը', 'Հավաքածուի մեջ տարրեր դասավորելու մեթոդ', 'Ծրագրի օպտիմալացման տեխնիկա', 'Բացառությունների բեռնաթափման մեթոդ', 3),
(60, 60, 'Սխալ, որը տեղի է ունենում, երբ հիշողությունը սխալ մուտք է գործում', 'Ծրագրի արդյունավետությունը բարձրացնելու միջոց', 'Ծրագիրը արտաքին հարձակումներից պաշտպանելու մեթոդ', 'Արտաքին սկավառակի վրա տվյալները գրելու գործընթացը', 1),
(61, 61, 'Ջորջ Վաշինգտոն', 'Ջոն Ադամս', 'Թոմաս Ջեֆերսոն', 'Աբրահամ Լինքոլն', 1),
(62, 62, 'Հան', 'Ռոմանովներ', 'Վինդզորներ', 'Պտղոմեոսներ', 4),
(63, 63, 'Լև Տոլստոյ', 'Ֆյոդոր Դոստոևսկի', 'Ալեքսանդր Պուշկին', 'Միխայիլ Լերմոնտով', 1),
(64, 64, '1776 թ', '1789 թ', '1812 թ', '1848 թ', 2),
(65, 65, 'Ֆրանց Ֆերդինանդի սպանությունը', 'Լուզիտանիայի պայթյուն', 'Հարձակում Փերլ Հարբորի վրա', 'Բելգիայի նվաճում', 1),
(66, 66, '1917 թ', '1905 թ', '1923 թ', '1939 թ', 1),
(67, 67, 'Հունաստան', 'Հռոմեական կայսրություն', 'Եգիպտոս', 'Հայաստան', 4),
(68, 68, '1299 թ', '1453 թ', '1521 թ', '1683 թ', 2),
(69, 69, 'Նելսոն Մանդելա', 'Ֆրեդերիկ Վիլեմ դե Կլերկ', 'Տաբո Մբեկի', 'Սիրիմա Ռամաֆոսա', 1),
(70, 70, '431 մ.թ.ա', '201 մ.թ.ա', '476 թ', '1492 թ', 1),
(71, 71, 'Վաթեռլոյի ճակատամարտ', 'Աուստեռլիցի ճակատամարտ', 'Ալեքսանդրիայի ճակատամարտ', 'Սարատոգայի ճակատամարտ', 1),
(72, 72, 'Հուլիոս Կեսար', 'Օկտավիանոս Օգոստոս', 'Տրայանոս', 'Էնթոնի Պիուս', 2),
(73, 73, 'Վլադիմիր Սվյատոսլավիչ', 'Օլեգ մարգարե', 'Իգոր Ռյուրիկովիչ', 'Ռյուրիկ', 4),
(74, 74, 'ԽՍՀՄ-ի մուտքը պատերազմի մեջ', 'Գերմանիայի ներխուժումը Լեհաստան', 'Հարձակում Փերլ Հարբորի վրա', 'Մյունխենի համաձայնագրի ստորագրում', 2),
(75, 75, 'Աթենք', 'Սպարտա', 'Տեբա', 'Կորինթոս', 1),
(76, 76, 'Նիլ Արմսթրոնգ', 'Յուրի Գագարին', 'Ջոն Գլեն', 'Քելլի Սքոթ', 2),
(77, 77, 'Մերկուրի', 'Յուպիտեր', 'Մարս', 'Սատուրն', 2),
(78, 78, 'Անդրոմեդա Գալակտիկա', 'Ծիր Կաթինի Գալակտիկա', 'Եռանկյունի Գալակտիկա', 'Սոմբրերո Գալակտիկա', 2),
(79, 79, 'Վեներա', 'Մերկուրի', 'Երկիր', 'Մարս', 2),
(80, 80, 'Յուպիտեր', 'Սատուրն', 'Ուրան', 'Նեպտուն', 4),
(81, 81, 'Ուրան', 'Նեպտուն', 'Սատուրն', 'Յուպիտեր', 3),
(82, 82, 'Ուրան', 'Սատուրն', 'Յուպիտեր', 'Նեպտուն', 4),
(83, 83, 'Երկրի մթնոլորտ մտնող երկնաքար', 'Կողքով անցնող գիսաստղ', 'Արբանյակ, որը կրկին մտնում է մթնոլորտ', 'Հեռավոր պայթյուն տիեզերքում', 1),
(84, 84, 'Եվրոպա', 'Տիտան', 'Գանիմեդ', 'Էնցելադուս', 2),
(85, 85, 'Պրոքսիմա Կենտավրի', 'Սիրիուս', 'Բետելգեյզ', 'Ալֆա Կենտավրի', 1),
(86, 86, 'Միջուկային տրոհում', 'Միջուկային միաձուլում', 'Միջուկային քայքայումը', 'Միջուկային փոխակերպում', 2),
(87, 87, 'Սիրիուս', 'Բևեռաս', 'Վեգա', 'Ալֆա Կենտավրոս', 1),
(88, 88, 'Սատուրն', 'Կեպլեր-291', '42 Դրակոնիս բ', 'Ուրան', 1),
(89, 89, 'Չափազանց մեծ ձգողականությամբ մոլորակ', 'Սև անցք, որն արձակում է ինտենսիվ ճառագայթում', 'Մահացող աստղի պայթյուն', 'Երկու գալակտիկաների բախում', 3),
(90, 90, 'Աստղային պայթյուն', 'Աստղային միաձուլում', 'Աստղային նուկլեոսինթեզ', 'Աստղային փլուզում', 4),
(91, 91, '3', '4', '5', '6', 3),
(92, 92, 'Արարատ', 'Էվերեստ', 'K2', 'Կանգչենջունգա', 2),
(93, 93, 'Նիագարա', 'Անխել', 'Վիկտորիա', 'Իգուազու', 2),
(94, 94, 'Շիրակ', 'Սյունիք', 'Վայոց Ձոր', 'Տավուշ', 2),
(95, 95, 'Հնդկական օվկիանոս', 'Ատլանտյան օվկիանոս', 'Խաղաղ օվկիանոս', 'Հյուսիսային Սառուցյալ օվկիանոս', 3),
(96, 96, 'Ամազոն գետ', 'Նեղոս գետ', 'Միսիսիպի գետ', 'Յանցզի գետ', 2),
(97, 97, 'Մահվան հովիտ', 'Մարիանյան իջվածք', 'Հյուսիս Սառուցյալ օվկիանոս', 'Մեռյալ ծով', 2),
(98, 98, 'Չինաստան', 'Ճապոնիա', 'Հնդկաստան', 'Բրազիլիա', 2),
(99, 99, 'Օտտավա', 'Տորոնտո', 'Վանկուվեր', 'Մոնրեալ', 1),
(100, 100, 'Եվրոպա', 'Ավստրալիա', 'Հարավային Ամերիկա', 'Աֆրիկա', 2),
(101, 101, 'Անդերի լեռներ', 'Հիմալայներ', 'Ժայռոտ լեռներ', 'Ալպեր', 3),
(102, 102, 'Սահարա անապատ', 'Գոբի անապատ', 'Ատակամա անապատ', 'Արաբական անապատ', 1),
(103, 103, 'Իսլանդիա', 'Հունաստան', 'Նոր Զելանդիա', 'Ինդոնեզիա', 1),
(104, 104, 'Հարավային Ամերիկա', 'Աֆրիկա', 'Ասիա', 'Ավստրալիա', 1),
(105, 105, 'Եգիպտոս', 'Հարավ Աֆրիկյան Հանրապետություն (ՀԱՀ)', 'Նիգերիա', 'Քենիա', 2),
(106, 106, 'Հիպոպոտամուս', 'Կոկորդիլոս', 'Բեհեմոթ', 'Ծովացուլ', 1),
(107, 107, 'Rockhopper պինգվին', 'Փոքրիկ կապույտ պինգվին', 'Մակարոնի պինգվին', 'Կայսերական պինգվին', 4),
(108, 108, 'Փիղ', 'Կապույտ կետ', 'Կիթիի խոզաքիթ չղջիկը', 'Ընձուղտ', 3),
(109, 109, 'Սպիտակ արջ', 'Գորիլա', 'Հիպոպոտամուս', 'Զեբրա', 1),
(110, 110, 'Մեծ սպիտակ շնաձուկ', 'Մուրճով շնաձուկ', 'Կետային շնաձուկ', 'Վագրային շնաձուկ', 3),
(111, 111, 'Սովորական ութոտնուկ', 'Մեդուզա', 'Կաղամար', 'Դդակաձուկ', 1),
(112, 112, 'Առյուծ', 'Փիղ', 'Ընձուղտ', 'Մոծակ', 4),
(113, 113, 'Շիմպանզե', 'Օրանգուտան', 'Դանդաղ Լորիս', 'Բաբուին', 3),
(114, 114, 'Փիղ', 'Ընձուղտ', 'Գորիլա', 'Չիտա', 1),
(115, 115, 'Ճաղատ Արծիվ', 'Ֆլամինգո', 'Հավալուսան', 'Ջայլամ', 1),
(116, 116, 'Ծովային կրիա', 'Առագաստաձուկ', 'Մեդուզա', 'Ծովային վարունգ', 2),
(117, 117, 'Ջայլամ', 'Արկտիկական նժույգ', 'Պինգվին', 'Հավ', 2),
(118, 118, 'Հոտ', 'Նախիր', 'Հերթ', 'Մոբ', 4),
(119, 119, 'Rockhopper պինգվին', 'Փոքրիկ կապույտ պինգվին', 'Մակարոնի պինգվին', 'Կայսերական պինգվին', 4),
(120, 120, 'Քամելեոն', 'Փիղ', 'Պինգվին', 'Ընձուղտ', 1),
(121, 121, '4', '5', '6', '12', 1),
(122, 122, '30', '40', '120', '60', 1),
(123, 123, 'Պյութագորաս', 'Արքիմեդ', 'Սոկրատես', 'Էվկլիդես', 4),
(124, 124, 'Ոչ խիստ', 'Խիստ', 'Կրկնակի', 'Իռացիոնալ', 2),
(125, 125, 'Աստիճան', 'Միկրոաստիճան', 'Նանոաստիճան', 'Մակրոաստիճան', 1),
(126, 126, '5', '6', '7', '4', 4),
(127, 127, 'R', 'B', 'C', 'A', 4),
(128, 128, '44', '20736', '13', '12', 4),
(129, 129, 'x = 3', 'x = 15', 'x = 5', 'x = 7', 3),
(130, 130, '-9', '9', '1/9', '-1/9', 3),
(131, 131, '-9', '-18', '9', '0', 1),
(132, 132, '√3', '-1', '1', '1/√3', 1),
(133, 133, 'Տեր Մերգելյան', 'Սերգեյ Մերգելյան', 'Պողոս Մերգելյան', 'Վահագն Մերգելյան', 3),
(134, 134, '20 քառակուսի միավոր', '25 քառակուսի միավոր', '31,4 քառակուսի միավոր', '900 քառակուսի միավոր', 2),
(135, 135, '2.71828', '3.71828', '2.71802', '2.71817', 1),
(136, 136, 'Անգելա Մերկել', 'Գերհարդ Շրյոդեր', 'Կոնրադ Ադենաուեր', 'Հելմուտ Կոլ', 1),
(137, 137, 'Թերեզա Մեյ', 'Մարգարեթ Թեթչեր', 'Լորդեսա Աստոր', 'Հարոլդ Ուիլսոն', 2),
(138, 138, 'Դմիտրի Մեդվեդև', 'Վլադիմիր Պուտին', 'Բորիս Ելցին', 'Միխայիլ Գորբաչով', 2),
(139, 139, 'Դմիտրի Մեդվեդև', 'Վլադիմիր Պուտին', 'Բորիս Ելցին', 'Միխայիլ Գորբաչով', 3),
(140, 140, 'Լեոնիդ Կրավչուկ', 'Լեոնիդ Կուչմա', 'Վիկտոր Յուշչենկո', 'Վիկտոր Յանուկովիչ', 1),
(141, 141, 'Բարաք Օբամա', 'Ջորջ Բուշ', 'Դոնալդ Թրամփ', 'Բիլ Քլինթոն', 1),
(142, 142, 'F. W. der Kerk', 'Թաբո Մբեկի', 'Կիրիլ Ռամաֆոզա', 'Նելսոն Մանդելա', 4),
(143, 143, 'Նուրսուլթան Նազարբաև', 'Կասիմ-Ժոմարտ Տոկաև', 'Քենեսարի Կասիմով', 'Ասկար Ախմետով', 1),
(144, 144, 'Սեբաստիան Կուրց', 'Ալեքսանդր Վան դեր Բելեն', 'Քրիստիան Քերն', 'Կառլ Նեհամմեր', 4),
(145, 145, 'Միշել Տեմեր', 'Ժաիր Բոլսոնարո', 'Դիլմա Ռուսեֆ', 'Լուիս Ինասիո Լուլա դա Սիլվա', 4),
(146, 146, 'Ռո Մու-հյուն', 'Տաևու Ռո', 'Քիմ Դեյ-Ջուն', 'Սիոնգման Լի', 4),
(147, 147, 'Էմանուել Մակրոն', 'Նիկոլա Սարկոզի', 'Ֆրանսուա Օլանդ', 'Ժակ Շիրակ', 1),
(148, 148, 'Անգելա Մերկել', 'Օլաֆ Շոլց', 'Անդրեաս Շոյեր', 'Գերհարդ Շրյոդեր', 2),
(149, 149, 'Քրիստինա Ֆերնանդես դե Կիրշներ', 'Մարիա Էվելինա դե Կիրշներ', 'Իզաբել Պերոն', 'Կամիլա Վալդիվիա', 3),
(150, 150, 'Մեգավատի Սուկանոպուտրի', 'Սուսիլո Բամբանգ Յուդոյոնո', 'Աբդուլլահ Ահմադ Բադավի', 'Ջոկո Վիդոդո', 1),
(151, 151, 'Թոմ Հենքս', 'Բրեդ Փիթ', 'Լեոնարդո Դի Կապրիո', 'Ջոնի Դեփ', 1),
(152, 152, 'Rolling Stones', 'Queen', 'The Beatles', 'Pink Floyd', 2),
(153, 153, 'Adele', 'Beyoncé', 'Taylor Swift', 'Rihanna', 1),
(154, 154, '1963 թ', '1965 թ', '1967 թ', '1969 թ', 1),
(155, 155, 'Բրեդ Փիթ', 'Թոմ Քրուզ', 'Լեոնարդո Դի Կապրիո', 'Ռոբերտ Դաունի կրտսերը', 3),
(156, 156, 'Led Zeppelin', 'AC/DC', 'Guns N Roses', 'The Rolling Stones', 1),
(157, 157, '«Parasites»', '«Green Book»', '«ONCE UPON A TIME... IN HOLLYWOOD»', '«12 Years a Slave»', 1),
(158, 158, 'Քիթ Հարինգթոն', 'Էմիլիա Քլարկ', 'Փիթեր Դինքլեյջ', 'Բոլոր թվարկված դերասանները', 4),
(159, 159, '«Star Wars: Episode VIII - The Last Jedi»', '«Spider-man Far From Home»', '«Parasites»', '«Green Book»', 4),
(160, 160, 'Avengers: Infinity War', '«Black Panther»', '«Iron Man»', '«Avengers»', 2),
(161, 161, 'Քրիս Էվանս', 'Ռոբերտ Դաունի կրտսեր', 'Քրիս Հեմսվորթ', 'Բոլոր թվարկված դերասանները', 4),
(162, 162, 'Nirvana', 'Pearl Jam', 'Red Hot Chili Peppers', 'Foo Fighters', 1),
(163, 163, 'Էդի Վեդդեր', 'Դեյվ Գրոլ', 'Քրիս Քորնել', 'Կուրտ Քոբեյն', 4),
(164, 164, 'Մորգան Ֆրիման', 'Ռոբերտ Դե Նիրո', 'Ալ Պաչինո', 'Թիմ Ռոբինս', 4),
(165, 165, 'Սթիվեն Սփիլբերգ', 'Քրիստոֆեր Նոլան', 'Մարտին Սկորսեզե', 'Քվենտին Տարանտինո', 2),
(166, 166, 'Գրիֆինդոր', 'Հաֆլփաֆ', 'Ռեյվենկլավ', 'Սլիզերին', 4),
(167, 167, 'Կիանու Ռիվզ', 'Թոմ Քրուզ', 'Ուիլ Սմիթ', 'Բրեդ Փիթ', 1),
(168, 168, 'Frozen', 'Moana', 'Toy Story', 'The Lion King (1994)', 1),
(169, 169, 'Ֆրենկ Դարաբոնտ', 'Սթիվեն Սփիլբերգ', 'Քվենտին Տարանտինո', 'Մարտին Սկորսեզե', 1),
(170, 170, 'Ֆրենսիս Ֆորդ Կոպոլա', 'Մարտին Սկորսեզե', 'Սթենլի Կուբրիկ', 'Ալֆրեդ Հիչքոք', 1),
(171, 171, 'Քրիս Կոլումբուս', 'Ալֆոնսո Կուարոն', 'Դեյվիդ Յեյթս', 'Վերը նշված բոլորը', 4),
(172, 172, 'Ռոբերտ Դաունի կրտսեր', 'Քրիս Էվանս', 'Թոմ Հոլանդ', 'Քրիս Հեմսվորթ', 1),
(173, 173, 'Մարկ Հեմիլ', 'Հարիսոն Ֆորդ', 'Քերի Ֆիշեր', 'Ալեք Գինես', 1),
(174, 174, 'Բազ Լույսի Տարի', 'Միստր Կարտոֆիլի', 'Գլուխ Համմ', 'Սլինկի շուն', 4),
(175, 175, 'Խաղալիքների պատմությունը', 'Առյուծ արքան', 'Գտնենք Նեմոյին', 'Շռեկ', 2),
(176, 176, 'Քվենտին Տարանտինո', 'Մարտին Սկորսեզե', 'Սթիվեն Սփիլբերգ', 'Քրիստոֆեր Նոլան', 1),
(177, 177, 'Ռոբերտ դե Նիրո', 'Ալ Պաչինո', 'Ջեք Նիկոլսոն', 'Դասթին Հոֆման', 1),
(178, 178, 'Վրիժառուներ. վերջնախաղ', 'Տիտանիկ', 'Ավատար', 'Աստղային պատերազմներ. իշխանությունը արթնանում է', 3),
(179, 179, 'Հոգեբան', 'Շողացողը', 'Տիտանիկ', 'Սատանա քշողը', 1),
(180, 180, 'Քեթրին Հեփբերն', 'Մերիլ Սթրիփ', 'Ինգրիդ Բերգման', 'Քեյթ Բլանշեթ', 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `statistic_id` bigint(20) UNSIGNED NOT NULL,
  `category` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` text NOT NULL,
  `category` varchar(20) NOT NULL,
  `hard_level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question`, `category`, `hard_level`) VALUES
(1, 'Ո՞ր թվականներին է Միխայիլ Տալը  եղել աշխարհի չեմպիոն։', 'Sport', 1),
(2, 'Ո՞վ է միակ ֆուտբոլիստը, ով հաղթել է ՖԻՖԱ-ի աշխարհի գավաթը, որպես խաղացող և մարզիչ։', 'Sport', 1),
(3, 'Ո՞վ է NBA-ի բոլոր ժամանակների լավագույն ռմբարկուն։', 'Sport', 1),
(4, 'Ո՞ր երկիրն է ամենաշատը նվաճել կրիկետի աշխարհի գավաթի տիտղոսը։', 'Sport', 2),
(5, 'Ֆորմուլա 1-ի ո՞ր ավտոարշավորդն է աշխարհի չեմպիոնի ամենաշատ հաղթանակների ռեկորդակիր:', 'Sport', 2),
(6, 'Ո՞վ է միակ բռնցքամարտիկը, ով աշխարհի տիտղոսներ է նվաճել ութ տարբեր քաշային կարգերում:', 'Sport', 2),
(7, 'Ո՞րն է աշխարհում ամենաշատ դիտվող սպորտաձևը:', 'Sport', 3),
(8, 'Ո՞ր երկիրն է ամենաշատը նվաճել ՖԻՖԱ-ի աշխարհի գավաթի տիտղոսները տղամարդկանց ֆուտբոլում:', 'Sport', 3),
(9, 'Ո՞ր սպորտաձևն է օգտագործում մաքոք:', 'Sport', 3),
(10, 'Ո՞ր գոլֆիստն է հաղթել ամենաշատ Masters մրցաշարերում:', 'Sport', 4),
(11, 'Ո՞ր մարզաձևում կգտնեք այնպիսի տերմիններ, ինչպիսիք են «հարվածը», «պահեստային» և «գնդիկավոր գնդակը»:  ', 'Sport', 4),
(12, 'Ո՞ր մարզիկն է նվաճել պատմության մեջ ամենաշատ օլիմպիական ոսկե մեդալները:', 'Sport', 4),
(13, 'Ո՞ր մարզաձևն է օգտագործում հարթ օվալաձև գնդակ:', 'Sport', 5),
(14, 'Ո՞ր մարզաձևն է հայտնի որպես «Ջենթլմենի խաղ»:', 'Sport', 5),
(15, 'Ո՞ր երկիրն է հայտնի իր ավանդական մարտարվեստով, որը կոչվում է «Սումո»:', 'Sport', 5),
(16, 'Ո՞վ է նկարել հայտնի «Մոնա Լիզա» ստեղծագործությունը:', 'Art', 1),
(17, 'Ո՞վ է նկարել «Աստղային գիշերը»:', 'Art', 1),
(18, 'Ո՞վ է համարվում կուբիզմի հիմնադիրը:', 'Art', 1),
(19, 'Ո՞վ է «Պատվի համար» պիեսի հեղինակը:', 'Art', 2),
(20, 'Նշվածներից ո՞ր քանդակի հեղինակը չէ Երվանդ Քոչարը:', 'Art', 2),
(21, 'Արվեստի ո՞ր շարժումն էր ձգտում պատկերել ենթագիտակցական միտքն ու երազանքները:', 'Art', 2),
(22, 'Նշվածներից ո՞վ է իտալացի նկարիչ:', 'Art', 3),
(23, 'Ո՞վ է գրել «The Shining» ստեղծագործությունը:', 'Art', 3),
(24, 'Ո՞վ է «Մտածողը» քանդակի հեղինակը:', 'Art', 3),
(25, 'Արվեստի քանի՞ տեսակ կա։', 'Art', 4),
(26, 'Ո՞վ է քանդակել «Դավթի» արձանը:', 'Art', 4),
(27, 'Ո՞ր նկարիչն է հայտնի «Սիքստինյան կապելլա» առաստաղի որմնանկարների ստեղծմամբ։', 'Art', 4),
(28, 'Ո՞վ է «Մարգարտյա ականջօղով աղջիկը» նկարի հեղինակը:', 'Art', 5),
(29, 'Արվեստի ո՞ր շարժմանն է բնորոշ վառ գույների և համարձակ վրձնահարվածների օգտագործումը:', 'Art', 5),
(30, 'Ո՞ր նկարիչն է հայտնի իր հայտնի «Քեմփբելի ապուրի բանկաներով»:', 'Art', 5),
(31, 'Ո՞վ է հայտնաբերել պարբերական համակարգի վերջին` 118-րդ տարրը (Օգանեսոն (Og)):', 'Science', 1),
(32, 'Հետևյալներից ո՞րն է մեր արեգակնային համակարգի ամենամեծ մոլորակը:', 'Science', 1),
(33, 'Ի՞նչ գործընթաց է բույսերը վերածում արևի լույսը քիմիական էներգիայի:', 'Science', 1),
(34, 'Ո՞ր ջերմաստիճանում է գոլորշիանում ջուրը:', 'Science', 2),
(35, 'Քանի՞ հայտնաբերված տարր կա ներկայիս դրությամբ քիմիայի պարբերական համակարգում:', 'Science', 2),
(36, 'Հետևյալներից ո՞րն է նյութի ամենափոքր միավորը:', 'Science', 2),
(37, 'Մարդու օրգանիզմում ո՞ր վիտամինի անբավարարության դեպքում են զարգանում մաշկային հիվանդություններ և տեսողության վատացում թույլ լուսավորության պայմաններում:', 'Science', 3),
(38, 'Ո՞րի համար քիմիական բանաձև չի կարող գրվել:', 'Science', 3),
(39, 'Ինչպե՞ս է կոչվում քիմիական տարրերի մի քանի պարզ նյութերի ձևով հանդես գալու երևույթը:', 'Science', 3),
(40, 'Ո՞րն է մագնիսական ինդուկցիայի վեկտորի(B) չափման միավորը:', 'Science', 4),
(41, 'Ո՞վ է առաջարկել մուտացիաների հասկացությունը:', 'Science', 4),
(42, 'Հետևյալներից ո՞րն է էներգիայի վերականգնվող աղբյուր:', 'Science', 4),
(43, 'Ո՞ր կանոնը գոյություն չունի ֆիզիկայում մագնիսականության վերաբերյալ:', 'Science', 5),
(44, 'Օրգանական միացությունների ո՞ր դասն է տալիս արծաթհայելու ռեակցիա:', 'Science', 5),
(45, 'Հետևյալներից ո՞րն է պատասխանատու կենդանի օրգանիզմներում գենետիկական տեղեկատվության կրման համար:  ', 'Science', 5),
(46, 'Տվյալների ի՞նչ կառուցվածք է օգտագործվում տարրերը առաջին մուտքի, առաջին դուրս գալու կարգով պահելու համար:', 'Programming', 1),
(47, 'Ի՞նչ ֆունկցիա է օգտագործվում python-ում տեքստը էկրանին ցուցադրելու համար:', 'Programming', 1),
(48, 'Ի՞նչ գործողություն է օգտագործվում երկու տողերի միացման համար ծրագրավորման լեզուների մեծ մասում:', 'Programming', 1),
(49, 'Ի՞նչ է նշանակում HTML հապավումը:', 'Programming', 2),
(50, 'Ո՞ր նիշն է սովորաբար օգտագործվում ծրագրավորման լեզուների մեծ մասում մեկ տողով comment նշելու համար:', 'Programming', 2),
(51, 'Ի՞նչ է «ինդեքսը» ծրագրավորման մեջ զանգվածների համատեքստում:', 'Programming', 2),
(52, 'Հետևյալ ծրագրավորման լեզուներից ո՞րն է դինամիկ մուտքագրված (Dynamic typing):', 'Programming', 3),
(53, 'Տվյալների ո՞ր տեսակն է սովորաբար օգտագործվում տասնորդական լողացող կետով թվերը ծրագրավորման լեզուների մեծ մասում պահելու համար:', 'Programming', 3),
(54, 'Ո՞ր օպերատորն է օգտագործվում ստուգելու համար, եթե երկու արժեքները հավասար են ծրագրավորման լեզուների մեծ մասում:', 'Programming', 3),
(55, 'Ի՞նչ է անում «for» հայտարարությունը ծրագրավորման լեզուների մեծ մասում:', 'Programming', 4),
(56, 'Ի՞նչ է ռեկուրսիան ծրագրավորման մեջ:', 'Programming', 4),
(57, 'Տվյալների ո՞ր կառուցվածքն է օգտագործվում բանալիով տարրերն արագ գտնելու համար:', 'Programming', 4),
(58, 'Ծրագրավորման ո՞ր հայեցակարգն է նկարագրում օբյեկտների միջև փոխհարաբերությունները, որոնցում մի օբյեկտի փոփոխությունը ավտոմատ կերպով հանգեցնում է մյուսի փոփոխության:', 'Programming', 5),
(59, 'Ի՞նչ է «տեսակավորման ալգորիթմը» ծրագրավորման մեջ:', 'Programming', 5),
(60, 'Ի՞նչ է «հորդառատ բուֆերը» (Buffer Overflow) ծրագրավորման մեջ:', 'Programming', 5),
(61, 'Ո՞վ է եղել ԱՄՆ-ի առաջին նախագահը:', 'History', 1),
(62, 'Հետևյալ դինաստիաներից ո՞րն է ղեկավարել Հին Եգիպտոսը:', 'History', 1),
(63, 'Ո՞վ էր «Պատերազմ և խաղաղություն» գրքի հեղինակը:', 'History', 1),
(64, 'Ո՞ր թվականին է տեղի ունեցել Ֆրանսիական հեղափոխությունը։', 'History', 2),
(65, 'Ո՞ր իրադարձությունն է սկսել Առաջին համաշխարհային պատերազմը:', 'History', 2),
(66, 'Ո՞ր թվականին է Ռուսաստանում տեղի ունեցել Հոկտեմբերյան հեղափոխությունը:', 'History', 2),
(67, 'Ո՞ր երկիրն է առաջինն ընդունել քրիստոնեությունը որպես պետական կրոն։', 'History', 2),
(68, 'Ո՞ր թվականին է Օսմանյան կայսրությունը գրավել Կոստանդնուպոլիսը:', 'History', 3),
(69, 'Ո՞վ էր Հարավային Աֆրիկայի առաջին նախագահը ապարտեիդի ավարտից հետո:', 'History', 3),
(70, 'Ո՞ր թվականին է սկսվել Պելոպոնեսյան պատերազմը:', 'History', 4),
(71, 'Հետևյալ մարտերից ո՞րն էր շրջադարձային Նապոլեոնյան պատերազմների ժամանակ:', 'History', 4),
(72, 'Ո՞վ էր Հռոմեական կայսրության առաջին կայսրը:', 'History', 4),
(73, 'Ո՞վ էր Կիևան Ռուսիայի հիմնադիրը:', 'History', 5),
(74, 'Ո՞ր իրադարձությունն է համարվում Երկրորդ համաշխարհային պատերազմի սկիզբը:', 'History', 5),
(75, 'Ո՞ր քաղաքն է եղել փիլիսոփա Սոկրատեսի ծննդավայրը։', 'History', 5),
(76, 'Ո՞վ է եղել առաջին տիեզերագնացը:', 'Astronomy', 1),
(77, 'Ո՞րն է մեր արեգակնային համակարգի ամենամեծ մոլորակը:', 'Astronomy', 1),
(78, 'Ո՞ր գալակտիկայում է գտնվում մեր արեգակնային համակարգը:', 'Astronomy', 1),
(79, 'Ո՞րն է ամենատաք մոլորակը:', 'Astronomy', 2),
(80, 'Ո՞րն է ամենասառը մոլորակը:', 'Astronomy', 2),
(81, 'Ո՞ր մոլորակն ունի ամենանշանավոր օղակների համակարգը:', 'Astronomy', 2),
(82, 'Ո՞ր մոլորակի անունն է նշանակում «Ծովի հռոմեական աստված»:', 'Astronomy', 3),
(83, 'Ի՞նչն է առաջացնում այն երևույթը, որը հայտնի է որպես ընկնող աստղ:', 'Astronomy', 3),
(84, 'Ինչպե՞ս է կոչվում Սատուրնի ամենամեծ արբանյակը:', 'Astronomy', 3),
(85, 'Ո՞ր աստղն է ամենամոտ Երկրին:', 'Astronomy', 4),
(86, 'Ո՞րն է այն գործընթացը, որով աստղերը էներգիա են արտադրում:', 'Astronomy', 4),
(87, 'Ո՞րն է գիշերային երկնքի ամենապայծառ աստղի անունը:', 'Astronomy', 4),
(88, 'Նշվածներից ո՞ր մոլորակի վրա է տեղում անձրև` ալմաստից:', 'Astronomy', 5),
(89, 'Ի՞նչ է սուպերնովան:', 'Astronomy', 5),
(90, 'Ո՞րն է այն պրոցեսը, որով աստղը փլուզվում է գրավիտացիայի տակ, ինչի արդյունքում առաջանում է չափազանց խիտ օբյեկտ:', 'Astronomy', 5),
(91, 'Քանի՞ օվկիանոս կա Երկիր մոլորակի վրա:', 'Geography', 1),
(92, 'Ո՞րն է Երկիր մոլորակի ամենաբարձր գագաթը:', 'Geography', 1),
(93, 'Ո՞րն է ամենաբարձր ջրվեժը:', 'Geography', 1),
(94, 'Ո՞ր մարզում է գտնվում Շաքիի ջրվեժը:', 'Geography', 2),
(95, 'Ո՞րն է աշխարհի ամենամեծ օվկիանոսը:', 'Geography', 2),
(96, 'Ո՞րն է աշխարհի ամենաերկար գետը:', 'Geography', 2),
(97, 'Ո՞ր է Երկիր մոլորակի ամենացածր կետը:', 'Geography', 3),
(98, 'Ո՞ր երկիրն է հայտնի որպես «Ծագող արևի երկիր»:', 'Geography', 3),
(99, 'Ո՞ր քաղաքն է Կանադայի մայրաքաղաքը:', 'Geography', 3),
(100, 'Ո՞ր մայրցամաքն է հայտնի «Land Down Under» անունով:', 'Geography', 4),
(101, 'Ո՞ր լեռնաշղթան է գտնվում Հյուսիսային Ամերիկայում և ձգվում է Կանադայից մինչև Նյու Մեքսիկո:', 'Geography', 4),
(102, 'Ո՞րն է աշխարհի ամենամեծ անապատը:', 'Geography', 4),
(103, 'Ո՞ր երկիրն է հայտնի որպես «Կրակի և սառույցի երկիր»:', 'Geography', 5),
(104, 'Ո՞ր մայրցամաքում է գտնվում Ամազոնի անձրևային անտառը:', 'Geography', 5),
(105, 'Ո՞ր երկիրն է գտնվում Աֆրիկայի ամենահարավային կետում:', 'Geography', 5),
(106, 'Ո՞ր կենդանու անունն է հունարեն նշանակում «գետի ձի»:', 'Animals', 1),
(107, 'Ո՞րն է պինգվինի ամենամեծ տեսակը:', 'Animals', 1),
(108, 'Ո՞րն է աշխարհի ամենափոքր կաթնասունը:', 'Animals', 1),
(109, 'Ո՞ր կենդանին է ամենամեծ ցամաքային գիշատիչը:', 'Animals', 2),
(110, 'Ո՞րն է շնաձկան ամենամեծ տեսակը:', 'Animals', 2),
(111, 'Ութոտնուկի ո՞ր տեսակն է հայտնի Քողարկելու և գույն փոխելու իր տպավորիչ ունակությամբ:', 'Animals', 2),
(112, 'Ո՞ր կենդանին է պատասխանատու Աֆրիկայում մարդկանց մահվան մեծ մասի համար:', 'Animals', 3),
(113, 'Ո՞ր կենդանին է աշխարհում միակ թունավոր պրիմատը:', 'Animals', 3),
(114, 'Ո՞ր կենդանին է հաղորդակցվում ինֆրաձայնի միջոցով՝ այն դարձնելով անլսելի մարդու ականջի համար:', 'Animals', 3),
(115, 'Ո՞րն է ԱՄՆ-ի ազգային թռչունը:', 'Animals', 4),
(116, 'Ո՞րն է ամենաարագ ծովային կենդանին:', 'Animals', 4),
(117, 'Ո՞ր կենդանին ունի աշխարհի ամենաերկար միգրացիոն ուղին:', 'Animals', 4),
(118, 'Ո՞րն է կենգուրու խմբի հավաքական անունը:', 'Animals', 5),
(119, 'Ո՞րն է պինգվինի ամենամեծ տեսակը:', 'Animals', 5),
(120, 'Հետևյալ կենդանիներից ո՞րն է հայտնի քողարկվելու և գույնը փոխելու ունակությամբ:', 'Animals', 5),
(121, 'Առավելագույնը քանի՞ ուղիղ անկյուն կարող է ունենալ քառանկյունը:', 'Math', 1),
(122, 'Քանի՞ աստիճան է եռանկյան անկյունը եթե մյուս անկյուններն են 50 և 100:', 'Math', 1),
(123, 'Ո՞վ է համարվում «երկրաչափության հայրը»:', 'Math', 1),
(124, 'Ինչպե՞ս է  կոչվում այն անհավասարումները,որոնցում առկա են միայն մեծի և փոքրի նշանները առանց = :', 'Math', 2),
(125, 'Ինչպե՞ս է կոչվում փռված անկյան 1/180 մասը:', 'Math', 2),
(126, 'Նվազագույնը քանի՞ մետաղադրամ է անհրաժեշտ 280 դրամ ստանալու համար:', 'Math', 2),
(127, 'Ո՞ր լատինկան տառով են սովորաբար նշանակում քառակուսային եռանդամի ավագ անդամի գործակիցը:', 'Math', 3),
(128, 'Որքա՞ն է 144 թվի քառակուսի արմատը:', 'Math', 3),
(129, 'Լուծե՛ք հավասարումը 3x + 7 = 22', 'Math', 3),
(130, 'Ինչի՞ է հավասար -9 թվի հակադիրի հակադարձը։', 'Math', 4),
(131, 'Ո՞րն է 9, 0, ... թվաբանական պրոգրեսիայի հաջորդ անդամը:', 'Math', 4),
(132, 'Ինչի՞ է հավասար կոտանգեսը 30 աստիճանում:', 'Math', 4),
(133, 'Հայ անվանի ո՞ր մաթեմատիկոսի մասին է պատմում Աշոտ Արզումանյանի <<Հրաշալի Էստաֆետը>> գիրքը:', 'Math', 5),
(134, 'Որքա՞ն է 5 միավոր շառավղով շրջանագծի մակերեսը:', 'Math', 5),
(135, 'Որքա՞ն է e թիվը (Էյլերի թիվը) մինչև 5 տասնորդական թիվը:', 'Math', 5),
(136, 'Ո՞վ է եղել Գերմանիայի Դաշնային Հանրապետության առաջին կին կանցլերը:', 'Politics', 1),
(137, 'Ո՞վ է եղել բրիտանացի առաջին կին վարչապետը:', 'Politics', 1),
(138, 'Ո՞վ է Ռուսաստանի Դաշնության ներկայիս նախագահը:', 'Politics', 1),
(139, 'Ո՞վ է եղել Ռուսաստանի Դաշնության առաջին նախագահը:', 'Politics', 2),
(140, 'Ո՞վ է եղել Ուկրաինայի առաջին նախագահը:', 'Politics', 2),
(141, 'Ո՞վ է եղել Միացյալ Նահանգների առաջին նախագահը, ով պաշտոնի է ընտրվել ինտերնետի միջոցով:', 'Politics', 2),
(142, 'Ո՞վ է Հարավ Աֆրիկյան  հանրապետության(ՀԱՀ) առաջին նախագահը 1994 թվականից ի վեր:', 'Politics', 3),
(143, 'Ո՞վ է Ղազախստանի Հանրապետության առաջին նախագահը:', 'Politics', 3),
(144, 'Ո՞վ է Ավստրիայի ներկայիս կանցլերը:', 'Politics', 3),
(145, 'Ո՞վ է Բրազիլիայի Դաշնային Հանրապետության ներկայիս նախագահը:', 'Politics', 4),
(146, 'Ո՞վ է եղել Հարավային Կորեայի առաջին նախագահը:', 'Politics', 4),
(147, 'Ո՞վ է Ֆրանսիայի ներկայիս նախագահը:', 'Politics', 4),
(148, 'Ո՞վ է Գերմանիայի Դաշնային Հանրապետության ներկայիս կանցլերը:', 'Politics', 5),
(149, 'Ո՞վ է եղել Արգենտինայի առաջին կին նախագահը:', 'Politics', 5),
(150, 'Ո՞վ է եղել Ինդոնեզիայի առաջին կին նախագահը:', 'Politics', 5),
(151, 'Ո՞ր դերասանն է նկարահանվել «The Green Mile» ֆիլմում:', 'Pop-culture', 1),
(152, 'Ո՞ր խումբն է նվագում «Bohemian Rhapsody» երգը:', 'Pop-culture', 1),
(153, 'Ո՞ր երգչուհին է կատարում «Rolling in the Deep» երգը:', 'Pop-culture', 1),
(154, 'Ո՞ր թվականին է թողարկվել The Beatles-ի առաջին ալբոմը:', 'Pop-culture', 2),
(155, 'Ո՞ր դերասանն է նկարահանվել «Inglourious Basterds» ֆիլմում:', 'Pop-culture', 2),
(156, 'Ո՞ր խումբն է երգում «Stairway to Heaven» երգը:', 'Pop-culture', 2),
(157, 'Ո՞ր ֆիլմն է արժանացել «Լավագույն ֆիլմ» Օսկարի 2020 թվականին:', 'Pop-culture', 3),
(158, 'Ո՞ր դերասանն է նկարահանվել «Game of Thrones» ֆիլմում:', 'Pop-culture', 3),
(159, 'Ո՞ր ֆիլմն է արժանացել «Լավագույն ֆիլմ» Օսկարի 2019 թվականին:', 'Pop-culture', 3),
(160, 'Ո՞ր ֆիլմն է եղել Marvel-ի առաջին ֆիլմը, որն արժանացել է Օսկարի «Լավագույն ֆիլմ» անվանակարգում:', 'Pop-culture', 4),
(161, 'Ո՞ր դերասանն է նկարահանվել «Avengers: Age of Ultron» ֆիլմում:', 'Pop-culture', 4),
(162, 'Ո՞ր խումբն է երգում «Smells Like Teen Spirit»-ը:', 'Pop-culture', 4),
(163, 'Հետևյալ երաժիշտներից ո՞րն է Nirvana-ի նախկին անդամ։', 'Pop-culture', 5),
(164, 'Հետևյալ դերասաններից ո՞վ են խաղացել «The Shawshank Redemption» ֆիլմում:', 'Pop-culture', 5),
(165, 'Հետևյալ ռեժիսորներից ո՞րն է նկարահանել «Interstellar» ֆիլմը:', 'Pop-culture', 5),
(166, 'Ո՞ր Հոգվարթսի թիմին է պատկանում Դրակո Մալֆոյը:', 'Media', 1),
(167, 'Ո՞ր դերասանն է մարմնավորել Նեոյի կերպարը «Մատրիցա» եռերգության մեջ:', 'Media', 1),
(168, 'Ո՞ր անիմացիոն ֆիլմում են Էլզան և Աննան:', 'Media', 1),
(169, 'Ո՞վ է նկարահանել «փախուստ Շոուշոնգից» ֆիլմը:', 'Media', 2),
(170, 'Ո՞վ է նկարահանել «Կնքահայրը» ֆիլմը:', 'Media', 2),
(171, 'Ո՞վ է բեմադրել Հարի Փոթերի ֆիլմաշարը:', 'Media', 2),
(172, 'Ո՞ր դերասանն է խաղացել Թոնի Սթարքի/Երկաթե մարդու դերը Marvel Cinematic Universe-ում:', 'Media', 3),
(173, 'Ո՞վ է խաղացել Լյուկ Սքայուոքերի կերպարը բնօրինակ «Աստղային պատերազմներ» եռագրության մեջ:', 'Media', 3),
(174, '«Խաղալիքների պատմություն» ֆիլմում ինչպե՞ս է կոչվում Վուդիի հավատարիմ օգնականը:', 'Media', 3),
(175, 'Ո՞ր անիմացիոն ֆիլմում է պատկերված Սիմբա անունով երիտասարդ առյուծ արքայազնը:', 'Media', 4),
(176, 'Ո՞վ է նկարահանել 1994թին «Pulp Fiction» ֆիլմը :', 'Media', 4),
(177, 'Ո՞վ է խաղացել գլխավոր դերը 1976թ-ին նկարահանված «Տաքսու վարորդ» ֆիլմում :', 'Media', 4),
(178, 'Ո՞ր ֆիլմն է բոլոր ժամանակների ամենաշատ եկամուր ունեցող բացման շաբաթավերջի ռեկորդը:', 'Media', 5),
(179, 'Ո՞ր ֆիլմում է նկարահանվել Նորման Բեյթսի կերպարը:', 'Media', 5),
(180, 'Ո՞ր դերասանուհին է արժանացել ամենաշատ «Օսկար» մրցանակնների՝ որպես լավագույն դերասանուհին:', 'Media', 5);

-- --------------------------------------------------------

--
-- Table structure for table `statistics`
--

CREATE TABLE `statistics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `question_id` bigint(20) UNSIGNED NOT NULL,
  `answer_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(20) NOT NULL,
  `levels_played` int(11) NOT NULL,
  `games_played` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `surname` varchar(20) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` text NOT NULL,
  `age` int(11) NOT NULL,
  `gender` tinyint(1) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `nationality` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `question_id` (`question_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `statistic_id` (`statistic_id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `statistics`
--
ALTER TABLE `statistics`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `answer_id` (`answer_id`),
  ADD KEY `question_id` (`question_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `phone` (`phone`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=184;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=184;

--
-- AUTO_INCREMENT for table `statistics`
--
ALTER TABLE `statistics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=213;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `answers`
--
ALTER TABLE `answers`
  ADD CONSTRAINT `answers_ibfk_1` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`);

--
-- Constraints for table `category`
--
ALTER TABLE `category`
  ADD CONSTRAINT `category_ibfk_1` FOREIGN KEY (`statistic_id`) REFERENCES `statistics` (`id`);

--
-- Constraints for table `statistics`
--
ALTER TABLE `statistics`
  ADD CONSTRAINT `statistics_ibfk_3` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
