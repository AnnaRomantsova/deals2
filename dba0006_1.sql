-- phpMyAdmin SQL Dump
-- version 3.4.11.1deb2+deb7u5
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Авг 24 2016 г., 09:39
-- Версия сервера: 5.5.50
-- Версия PHP: 5.4.45-0+deb7u4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `dba0006_1`
--

-- --------------------------------------------------------

--
-- Структура таблицы `deals`
--

CREATE TABLE IF NOT EXISTS `deals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_create` int(11) DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `sposob` varchar(255) DEFAULT NULL,
  `srok_end_podach` varchar(255) DEFAULT NULL,
  `customer` varchar(255) DEFAULT NULL,
  `inn_customer` varchar(255) DEFAULT NULL,
  `price_lot` float DEFAULT NULL,
  `price_zaiav` float DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `responsible` varchar(255) DEFAULT NULL,
  `geographi` varchar(255) DEFAULT NULL,
  `status_prep` int(11) DEFAULT NULL,
  `itog_zaiav` float DEFAULT NULL,
  `date_realiz` varchar(255) DEFAULT NULL,
  `date_contract` varchar(255) DEFAULT NULL,
  `number_contract` varchar(255) DEFAULT NULL,
  `date_income` varchar(255) DEFAULT NULL,
  `status_uch` varchar(255) DEFAULT NULL,
  `name_etp` varchar(255) DEFAULT NULL,
  `price_winner` float DEFAULT NULL,
  `inn_winner` varchar(255) DEFAULT NULL,
  `name_winner` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `predmet` varchar(255) DEFAULT NULL,
  `price_contract` float DEFAULT NULL,
  `status_contract` int(11) DEFAULT NULL,
  `uchastnik` int(11) DEFAULT NULL,
  `link` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=cp1251 AUTO_INCREMENT=191 ;

--
-- Дамп данных таблицы `deals`
--

INSERT INTO `deals` (`id`, `date_create`, `number`, `sposob`, `srok_end_podach`, `customer`, `inn_customer`, `price_lot`, `price_zaiav`, `status`, `comment`, `responsible`, `geographi`, `status_prep`, `itog_zaiav`, `date_realiz`, `date_contract`, `number_contract`, `date_income`, `status_uch`, `name_etp`, `price_winner`, `inn_winner`, `name_winner`, `type`, `predmet`, `price_contract`, `status_contract`, `uchastnik`, `link`) VALUES
(79, 1470717677, '0321200008716000148', 'ЭА', '1471381200', '"ГБУЗ СК ""Кккд"", БУ"', '2633004373', 606240, 300000, '6', '', 'Специалист', 'Ставропольский Край 26', 1, NULL, '1472158800', NULL, NULL, '1471014244', '4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'http://zakupki.gov.ru/epz/order/notice/ea44/view/common-info.html?regNumber=0321200008716000148\r\n'),
(80, 1470717677, '0358200019316000129', 'ЭА', '1471294800', '"ГБУ РО ""ЦМР № 1"" в г. Таганроге"', '6154058812', 249091, 150000, '6', NULL, 'Специалист', 'Ростовская обл. 61', 1, NULL, '1471813200', NULL, NULL, '1470817506', '3', NULL, 98263, '6163107696', 'ООО МЕДиКА', NULL, NULL, NULL, NULL, 1, 'http://zakupki.gov.ru/epz/order/notice/ea44/view/common-info.html?regNumber=0358200019316000129\r\n'),
(81, 1470717677, '0318200025616000164', 'ЭА', '1471381200', 'Скпб №1, ГБУЗ', '2309023102', 428960, 270000, '6', '', 'Специалист', 'Краснодарский Край 23', 1, NULL, '1471813200', NULL, NULL, '1470817790', '4', NULL, 0, '', '', NULL, NULL, NULL, NULL, 4, 'http://zakupki.gov.ru/epz/order/notice/ea44/view/common-info.html?regNumber=0318200025616000164\r\n'),
(82, 1470717677, '0318200025616000163', 'ЭА', '1471381200', 'Скпб №1, ГБУЗ', '2309023102', 399915, 200000, '6', NULL, 'Специалист', 'Краснодарский Край 23', 1, NULL, '1471813200', NULL, NULL, '1470834414', '4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'http://zakupki.gov.ru/epz/order/notice/ea44/view/common-info.html?regNumber=0318200025616000163\r\n'),
(83, 1470717677, '0129200005316003186', 'ЭА', '1471381200', 'Вопб № 1, ГБУЗ', '3409100521', 459392, 0, '2', 'Не рентабельно', 'Специалист', 'Волгоградская обл. 34', 1, NULL, '1471640400', NULL, NULL, '1471324185', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'http://zakupki.gov.ru/epz/order/notice/ea44/view/common-info.html?regNumber=0129200005316003186\r\n'),
(84, 1470717677, '0358300001416000163', 'ЗК', '1471467600', 'МБУЗ ГБСМП', '6150022117', 305463, 150000, '6', '', 'Специалист', 'Ростовская обл. 61', 1, NULL, '1471467600', NULL, '', '1471526796', '3', NULL, 149989, '6164224554', 'НЕГОСУДАРСТВЕННОЕ УЧРЕЖДЕНИЕ ЗДРАВООХРАНЕНИЯ ', NULL, NULL, NULL, 1, 1, 'http://zakupki.gov.ru/epz/order/notice/zk44/view/common-info.html?regNumber=0358300001416000163\r\n'),
(85, 1470717677, '0318200025616000165', 'ЭА', '1471381200', 'Скпб №1, ГБУЗ', '2309023102', 493455, 138000, '6', NULL, 'Специалист', 'Краснодарский Край 23', 1, NULL, '1471813200', NULL, NULL, '1470834446', '4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'http://zakupki.gov.ru/epz/order/notice/ea44/view/common-info.html?regNumber=0318200025616000165\r\n'),
(86, 1470717677, '0358300065716000037', 'ЭА', '1471294800', '"МБУ ""Центр Социального Обслуживания"" г.Каменск-Шахтинского"', '6147005249', 484043, NULL, '2', 'Требуется помещение в г. Каменск-Шахтинский на 1 мес.', 'Специалист', 'Ростовская обл. 61', NULL, NULL, NULL, NULL, NULL, '1470896531', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://zakupki.gov.ru/epz/order/notice/ea44/view/common-info.html?regNumber=0358300065716000037\r\n'),
(87, 1470717677, '0176100004216000008', 'ЭА', '1471294800', 'Управление Роспотребнадзора по Республике Адыгея (Адыгея)', '0105044446', 216100, 0, '2', 'Только маммография - это диспансеризация госслужащих', 'Специалист', 'Адыгея Респ. 01', NULL, NULL, NULL, NULL, NULL, '1470825138', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'http://zakupki.gov.ru/epz/order/notice/ea44/view/common-info.html?regNumber=0176100004216000008\r\n'),
(88, 1470717677, '0318200025616000162', 'ЭА', '1471381200', 'Скпб №1, ГБУЗ', '2309023102', 277770, 180000, '6', '', 'Специалист', 'Краснодарский Край 23', 1, NULL, '1471813200', NULL, NULL, '1470834466', '4', NULL, 0, '', '', NULL, NULL, NULL, NULL, 4, ''),
(89, 1470717677, '0318300009216000465', 'ЭА', '1471294800', 'Каневская ЦРБ, МБУ', '2334006580', 397224, NULL, '2', 'стоматолог на год по мере необходимости, 7356 осмотров', 'Специалист', 'Краснодарский Край 23', NULL, NULL, NULL, NULL, NULL, '1470812932', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://zakupki.gov.ru/epz/order/notice/ea44/view/common-info.html?regNumber=0318300009216000465\r\n'),
(90, 1470717677, '0318300370616000005', 'ЗК', '1471208400', 'ДШИ №11 МО Город Краснодар, МБУ', '2312103950', 206133, 74000, '6', NULL, 'Специалист', 'Краснодарский Край 23', 1, NULL, '1471208400', NULL, NULL, '1470906454', '3', NULL, 60000, '2311194585', 'ООО "МЕД"', NULL, NULL, NULL, NULL, 4, 'http://zakupki.gov.ru/epz/order/notice/zk44/view/common-info.html?regNumber=0318300370616000005\r\n'),
(91, 1470717677, '0358100023016000047', 'ЭА', '1471294800', '12 Отряд ФПС по Ростовской Области, ФГКУ', '6153026783', 399865, 200000, '6', 'Срок оказания услуг - в течение 30 (тридцати) календарных дней с момента заключения Контракта\r\nМесто оказания - по РО', 'Специалист', 'Ростовская обл. 61', 1, NULL, '1471813200', NULL, 'б/н', '1470899021', '2', NULL, 220001, '6167124660', 'ООО МЦ Гиппократ', NULL, NULL, NULL, 1, 1, 'http://zakupki.gov.ru/epz/order/notice/ea44/view/common-info.html?regNumber=0358100023016000047\r\n'),
(92, 1470804142, '0358200035516000017', 'ЗК', '1471294800', 'Гкусо РО Ростовский Центр Помощи Детям № 10', '6166040591', 30303, 18000, '6', NULL, 'Специалист', 'Ростовская обл. 61', 1, NULL, '1471294800', NULL, NULL, '1470894771', '3', NULL, 15880, '6161076570', 'ООО Профмедицина', NULL, NULL, NULL, NULL, 1, 'http://zakupki.gov.ru/epz/order/notice/zk44/view/common-info.html?regNumber=0358200035516000017\r\n'),
(93, 1470804142, '0318100046116000080', 'ЭА', '1471381200', '"ФКУ ""ГБ МСЭ по Краснодарскому Краю"" Минтруда России"', '2308103450', 1474200, 915000, '6', '', 'Специалист', 'Краснодарский Край 23', 1, NULL, '1471813200', NULL, NULL, '1471428738', '4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'http://zakupki.gov.ru/epz/order/notice/ea44/view/common-info.html?regNumber=0318100046116000080\r\n'),
(94, 1470804142, '0318300119416001263', 'ЭА', '1471381200', '"МКУ МО г. Краснодар ""ЕДДС"""', '2310132681', 180097, 71000, '6', NULL, 'Специалист', 'Краснодарский Край 23', 1, NULL, '1471813200', NULL, NULL, '1470834944', '4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'http://zakupki.gov.ru/epz/order/notice/ea44/view/common-info.html?regNumber=0318300119416001263\r\n'),
(95, 1470804142, '0375200005816000070', 'ЗК', '1471294800', 'ГБУЗ РК «Керченская ГДБ»', '9111009020', 131522, 65000, '5', 'Не успеваем доставить заявку ', 'Специалист', 'Республика Крым 91', 1, NULL, NULL, NULL, NULL, '1470898819', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'http://zakupki.gov.ru/epz/order/notice/zk44/view/common-info.html?regNumber=0375200005816000070\r\n'),
(96, 1470804142, '0358100000716000070', 'ЗК', '1471294800', '"ФГКУ Комбинат ""Атлас"" Росрезерва"', '6114003630', 111320, NULL, '2', 'ХТИ в Ростовской обл', 'Специалист', 'Ростовская обл. 61', NULL, NULL, NULL, NULL, NULL, '1470906120', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://zakupki.gov.ru/epz/order/notice/zk44/view/common-info.html?regNumber=0358100000716000070\r\n'),
(97, 1470804142, '0358300329116000071', 'ЭА', '1471381200', 'Городская Больница № 1, МБУЗ', '6150015871', 258667, 160000, '6', NULL, 'Специалист', 'Ростовская обл. 61', 1, NULL, '1471813200', NULL, NULL, '1470999357', '3', NULL, 48100, '6164104049', 'ГБУ РО Наркологический диспансер', NULL, NULL, NULL, NULL, 1, 'http://zakupki.gov.ru/epz/order/notice/ea44/view/common-info.html?regNumber=0358300329116000071\r\n'),
(98, 1470804142, 'ZK16081600011', 'ЗК', '1471294800', '570 Арз, АО', '2306030214', 350000, NULL, '2', 'Предмет закупки - поставка ацетона', 'Специалист', 'Краснодарский Край 23', NULL, NULL, NULL, NULL, NULL, '1470835068', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://web.etprf.ru/NotificationZK/Print/id/143481\r\n'),
(99, 1470804142, '0318300469416000008', 'ЗК', '1471467600', '"""Городская Поликлиника № 7"" Уза МО г.Новороссийск, МБУ"', '2315076543', 497921, NULL, '2', 'Не имеем возможности выполнить требуемые лабораторные исследования', 'Специалист', 'Краснодарский Край 23', NULL, NULL, NULL, NULL, NULL, '1470899157', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://zakupki.gov.ru/epz/order/notice/zk44/view/common-info.html?regNumber=0318300469416000008\r\n'),
(100, 1470804142, '0358300000516000121', 'ЭА', '1471294800', 'ГБСМП, МБУЗ', '6154035371', 313612, NULL, '2', 'Каменск-Шахтинский - не выполняем, клиент конкурента', 'Специалист', 'Ростовская обл. 61', NULL, NULL, NULL, NULL, NULL, '1470902070', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://zakupki.gov.ru/epz/order/notice/ea44/view/common-info.html?regNumber=0358300000516000121\r\n'),
(111, 1470894279, '0321200026216000261', 'ЭА', '1471467600', 'Пасс СК, ГКУ', '2636046075', 361840, 300000, '6', NULL, 'Специалист', 'Ставропольский Край 26', 1, NULL, '1471813200', NULL, NULL, '1471428881', '4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'http://zakupki.gov.ru/epz/order/notice/ea44/view/common-info.html?regNumber=0321200026216000261\r\n'),
(112, 1470894279, '0358300008416000230', 'ЭА', '1471467600', 'МУНИЦИПАЛЬНОЕ БЮДЖЕТНОЕ ОБЩЕОБРАЗОВАТЕЛЬНОЕ УЧРЕЖДЕНИЕ ТАБУНЩИКОВСКАЯ СРЕДНЯЯ ОБЩЕОБРАЗОВАТЕЛЬНАЯ ШКОЛА', '6148004336', 24093, NULL, '2', 'Участвует Гиппократ-Новошахтинск', 'Специалист', 'Ростовская обл. 61', NULL, NULL, NULL, NULL, NULL, '1470896875', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://zakupki.gov.ru/epz/order/notice/ea44/view/common-info.html?regNumber=0358300008416000230\r\n'),
(114, 1470894279, '0318200066116000275', 'ЭА', '1471381200', 'ГБУЗ Кптд', '2309038980', 80374, NULL, '2', 'Линейная томография легких - противотуберкулезные мероприятия не осуществляем', 'Специалист', 'Краснодарский Край 23', NULL, NULL, NULL, NULL, NULL, '1470905527', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://zakupki.gov.ru/epz/order/notice/ea44/view/common-info.html?regNumber=0318200066116000275\r\n'),
(115, 1470978611, '0318200066116000278', 'ЗК', '1471813200', 'ГБУЗ Кптд', '2309038980', 328977, 210000, '6', NULL, 'Специалист', 'Краснодарский Край 23', 1, NULL, '1471813200', NULL, NULL, '1471328817', '3', NULL, 134320, '6167063344', 'Краевая поликлиника федерального государственного бюджетного учреждения здравоохранения "Южный окружной медицинский центр Федерального медико-биологического агентства "', NULL, NULL, NULL, NULL, 4, 'http://zakupki.gov.ru/epz/order/notice/zk44/view/common-info.html?regNumber=0318200066116000278\r\n'),
(116, 1470978611, '0818100003716000121', 'ЭА', '1471554000', '"ФГКУ ""419 ВГ"" Минобороны России"', '2309144210', 1276670, NULL, '2', 'передвижной медицинский комплекс', 'Специалист', 'Краснодарский Край 23', NULL, NULL, NULL, NULL, NULL, '1471342564', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://zakupki.gov.ru/epz/order/notice/ea44/view/common-info.html?regNumber=0818100003716000121\r\n'),
(117, 1470978611, '31603983559', 'ЗП', '1471381200', 'Газпром Газораспределение Краснодар, АО', '2308021656', 474360, NULL, '2', 'Предрейсовые МО', 'Специалист', 'Краснодарский Край 23', NULL, NULL, NULL, NULL, NULL, '1471271600', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://zakupki.gov.ru/epz/order/extendedsearch/results.html?searchString=&morphology=on&openMode=USE_DEFAULT_PARAMS&pageNumber=1&sortDirection=false&recordsPerPage=_10&showLotsInfoHidden=false&fz44=on&fz223=on&orderNumber=31603983559&placingWaysList=&placingWaysList223=&priceFrom=0&priceTo=200000000000%C2%A4cyId=1&participantName=&publishDateFrom=&publishDateTo=&updateDateFrom=&updateDateTo=&customerTitle=&customerCode=&customerFz94id=&customerFz223id=&customerInn=&agencyTitle=&agencyCode=&agenc'),
(126, 1471237352, '0318200087916000037', 'ЭА', '1471813200', 'ПТД № 18, ГБУЗ', '2340018030', 106450, 73000, '6', NULL, 'Краснодар', 'Краснодарский Край 23', 1, NULL, '1472158800', NULL, NULL, '1471430779', '4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'http://zakupki.gov.ru/epz/order/notice/ea44/view/common-info.html?regNumber=0318200087916000037\r\n'),
(127, 1471237352, '31603989631', 'ЭА', '1471813200', '163 Бтрз, АО', '2340020470', 317056, NULL, '2', 'Требуется передвижной мед комплекс, оборонка', 'Специалист', 'Краснодарский Край 23', NULL, NULL, NULL, NULL, NULL, '1471506477', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://zakupki.gov.ru/epz/order/extendedsearch/results.html?searchString=&morphology=on&openMode=USE_DEFAULT_PARAMS&pageNumber=1&sortDirection=false&recordsPerPage=_10&showLotsInfoHidden=false&fz44=on&fz223=on&orderNumber=31603989631&placingWaysList=&placingWaysList223=&priceFrom=0&priceTo=200000000000%C2%A4cyId=1&participantName=&publishDateFrom=&publishDateTo=&updateDateFrom=&updateDateTo=&customerTitle=&customerCode=&customerFz94id=&customerFz223id=&customerInn=&agencyTitle=&agencyCode=&agenc'),
(128, 1471237352, '0129200005316003265', 'ЭА', '1471986000', '"Гбссу со Гпви ""Волжский ПНИ"""', '3435110357', 381856, 297537, '6', NULL, 'Специалист', 'Волгоградская обл. 34', 1, NULL, '1472418000', NULL, NULL, '1471422790', '4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'http://zakupki.gov.ru/epz/order/notice/ea44/view/common-info.html?regNumber=0129200005316003265\r\n'),
(129, 1471237352, '31603990552', 'ЗЦ', '1471467600', 'Санаторий Дубовая Роща, ФГБУ', '2627013010', 775312, 450000, '6', NULL, 'Специалист', 'Ставропольский Край 26', 1, NULL, '1471467600', NULL, NULL, '1471419902', '3', NULL, 430000, '2632092546', 'ООО Панацея', NULL, NULL, NULL, NULL, 1, 'http://zakupki.gov.ru/epz/order/extendedsearch/results.html?searchString=&morphology=on&openMode=USE_DEFAULT_PARAMS&pageNumber=1&sortDirection=false&recordsPerPage=_10&showLotsInfoHidden=false&fz44=on&fz223=on&orderNumber=31603990552&placingWaysList=&placingWaysList223=&priceFrom=0&priceTo=200000000000%C2%A4cyId=1&participantName=&publishDateFrom=&publishDateTo=&updateDateFrom=&updateDateTo=&customerTitle=&customerCode=&customerFz94id=&customerFz223id=&customerInn=&agencyTitle=&agencyCode=&agenc'),
(130, 1471237353, '0129200005316003260', 'ЭА', '1471986000', '"Гбссу со Гпви ""Бударинский ПНИ"""', '3419400757', 173926, NULL, '2', 'не рентабельно', 'Специалист', 'Волгоградская обл. 34', NULL, NULL, NULL, NULL, NULL, '1471432890', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://zakupki.gov.ru/epz/order/notice/ea44/view/common-info.html?regNumber=0129200005316003260\r\n'),
(132, 1471237353, '0318200012616000005', 'ЭА', '1471813200', 'УСЗН в Прикубанском Округе г. Краснодара, ГКУСРФ', '2311079568', 125168, NULL, '2', 'принципиально маммография', 'Специалист', 'Краснодарский Край 23', NULL, NULL, NULL, NULL, NULL, '1471504512', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://zakupki.gov.ru/epz/order/notice/ea44/view/common-info.html?regNumber=0318200012616000005\r\n'),
(133, 1471237353, '0321200015016000177', 'ЗК', '1471554000', '"ГБУЗ СК ""Ккптд"", БУ"', '2633001301', 135408, 116500, '6', NULL, 'Специалист', 'Ставропольский Край 26', 1, NULL, '1471554000', NULL, NULL, '1471419927', '3', NULL, 52000, '2634812824', 'ОБЩЕСТВО С ОГРАНИЧЕННОЙ ОТВЕТСТВЕННОСТЬЮ "НЕЗАВИСИМАЯ КЛИНИКО-ДИАГНОСТИЧЕСКАЯ ЛАБОРАТОРИЯ"', NULL, NULL, NULL, NULL, 1, 'http://zakupki.gov.ru/epz/order/notice/zk44/view/common-info.html?regNumber=0321200015016000177\r\n'),
(134, 1471325142, '0318300251816000002', 'ЗК', '1471554000', 'МБОУ до Сдюсш № 1', '2310070474', 125600, 64800, '6', NULL, 'Краснодар', 'Краснодарский Край 23', 1, NULL, '1471554000', NULL, NULL, '1471502581', '2', NULL, 64800, '2308217377', 'ООО МЦ Гиппократ Краснодар', NULL, NULL, NULL, NULL, 4, 'http://zakupki.gov.ru/epz/order/notice/zk44/view/common-info.html?regNumber=0318300251816000002\r\n'),
(135, 1471325142, '0318200078816000003', 'ЭА', '1471899600', 'Региональная Энергетическая Комиссия - Департамент Цен и Тарифов Краснодарского Края', '2308085811', 286245, NULL, '2', 'маммография', 'Специалист', 'Краснодарский Край 23', NULL, NULL, NULL, NULL, NULL, '1471344657', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://zakupki.gov.ru/epz/order/notice/ea44/view/common-info.html?regNumber=0318200078816000003\r\n'),
(136, 1471325142, '0329100008916000029', 'ЭА', '1471899600', 'ФГБОУ во Волгоградский ГАУ', '3446501024', 39844, NULL, '2', 'не рентабельно, предварительный м/о', 'Специалист', 'Волгоградская обл. 34', NULL, NULL, NULL, NULL, NULL, '1471434132', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://zakupki.gov.ru/epz/order/notice/ea44/view/common-info.html?regNumber=0329100008916000029\r\n'),
(137, 1471325142, '0318200048316000039', 'ЭА', '1471986000', '"ГБУ со КК ""Отрадненский ДДИ"", ГКУСРФ"', '2345007177', 314486, 86600, '6', NULL, 'Специалист', 'Краснодарский Край 23', 1, NULL, '1472418000', NULL, NULL, '1471495028', '4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'http://zakupki.gov.ru/epz/order/notice/ea44/view/common-info.html?regNumber=0318200048316000039\r\n'),
(138, 1471325142, '0318200047616000005', 'ЭА', '1471899600', 'Госветуправление Краснодарского Края', '2309055979', 249183, 151800, '6', NULL, 'Краснодар', 'Краснодарский Край 23', 1, NULL, '1472418000', NULL, NULL, '1471430322', '4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'http://zakupki.gov.ru/epz/order/notice/ea44/view/common-info.html?regNumber=0318200047616000005\r\n'),
(139, 1471325142, '0358300271716000010', 'ЭА', '1471899600', 'Школа № 109, МБОУ', '6166018719', 77197, 28353, '6', NULL, 'Специалист', 'Ростовская обл. 61', 1, NULL, '1472418000', NULL, NULL, '1471501579', '4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'http://zakupki.gov.ru/epz/order/notice/ea44/view/common-info.html?regNumber=0358300271716000010\r\n'),
(140, 1471325142, '0375200029016000149', 'ЗК', '1472072400', '"ГБУЗ РК ""Кнпцн"""', '9102065684', 426758, 302000, '6', NULL, 'Специалист', 'Республика Крым 91', 1, NULL, '1472072400', NULL, NULL, '1471429764', '4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'http://zakupki.gov.ru/epz/order/notice/zk44/view/common-info.html?regNumber=0375200029016000149\r\n'),
(141, 1471325142, '0318200030716000023', 'ЭА', '1471813200', '"ГКУ со КК ""Новокубанский СРЦН"", КУ"', '2343014700', 182313, 97000, '6', NULL, 'Краснодар', 'Краснодарский Край 23', 1, NULL, '1472418000', NULL, NULL, '1471430814', '4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'http://zakupki.gov.ru/epz/order/notice/ea44/view/common-info.html?regNumber=0318200030716000023\r\n'),
(142, 1471415508, '032510008816000153', 'ЭА', '1471986000', 'АКБ ФГБУЗ ЮОМЦ ФМБА России', '6167063344', 271192, NULL, '2', 'Осмотр детского хирурга, Детский уролог-андролог', 'Специалист', 'Астрахань', NULL, NULL, NULL, NULL, NULL, '1471495992', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://zakupki.gov.ru/epz/order/notice/ea44/view/common-info.html?regNumber=0325100028816000153\r\n'),
(143, 1471415508, '032510008816000154', 'ЭА', '1471986000', 'АКБ ФГБУЗ ЮОМЦ ФМБА России', '6167063344', 195946, NULL, '2', 'Осмотр детского хирурга, травматолога-ортопеда', 'Специалист', 'Астрахань', NULL, NULL, NULL, NULL, NULL, '1471495888', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://zakupki.gov.ru/epz/order/notice/ea44/view/documents.html?regNumber=0325100028816000154\r\n'),
(144, 1471415508, '0325200004316000159', 'ЭА', '1471986000', 'ГБУЗ АО «Областная инфекционная клиническая больница им. А.М. Ничоги» ', '3015012036', 650589, 426000, '6', '', 'Специалист', 'Астрахань', 1, NULL, '1472418000', NULL, NULL, '1471586322', '4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'http://zakupki.gov.ru/epz/order/notice/ea44/view/documents.html?regNumber=0325200004316000159\r\n'),
(145, 1471417527, '31603999728', 'ЗП', '1471813200', 'ВКХ, МУП', '6143049157', 720000, NULL, '2', 'Нерентабельно', 'Специалист', 'Ростовская обл. 61', NULL, NULL, NULL, NULL, NULL, '1471526899', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://zakupki.gov.ru/epz/order/extendedsearch/results.html?searchString=&morphology=on&openMode=USE_DEFAULT_PARAMS&pageNumber=1&sortDirection=false&recordsPerPage=_10&showLotsInfoHidden=false&fz44=on&fz223=on&orderNumber=31603999728&placingWaysList=&placingWaysList223=&priceFrom=0&priceTo=200000000000%C2%A4cyId=1&participantName=&publishDateFrom=&publishDateTo=&updateDateFrom=&updateDateTo=&customerTitle=&customerCode=&customerFz94id=&customerFz223id=&customerInn=&agencyTitle=&agencyCode=&agenc'),
(146, 1471457322, '0858100004716000119', 'ЭА', '1472072400', 'Поликлиника № 1 ФТС России', '6164314945', 76150, NULL, '2', 'не наш профиль', 'Специалист', 'Ростовская обл. 61', NULL, NULL, NULL, NULL, NULL, '1471508416', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://zakupki.gov.ru/epz/order/notice/ea44/view/common-info.html?regNumber=0858100004716000119\r\n'),
(147, 1471457322, '0358300068916000238', 'ЭА', '1472072400', 'ГБ №1 им. Н.А. Семашко Города Ростова-На-Дону, МБУЗ', '6165025382', 1048540, 497242, '6', '', 'Специалист', 'Ростовская обл. 61', 1, NULL, '1472763600', NULL, NULL, '1471958721', '4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'http://zakupki.gov.ru/epz/order/notice/ea44/view/common-info.html?regNumber=0358300068916000238\r\n'),
(148, 1471457322, '0318200066116000284', 'ЗК', '1471986000', 'ГБУЗ Кптд', '2309038980', 207279, 128800, '3', NULL, 'Краснодар', 'Краснодарский Край 23', 2, NULL, NULL, NULL, NULL, '1471943475', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'http://zakupki.gov.ru/epz/order/notice/zk44/view/common-info.html?regNumber=0318200066116000284\r\n'),
(149, 1471457322, '0318200066116000286', 'ЗК', '1472158800', 'ГБУЗ Кптд', '2309038980', 499498, 320600, '3', NULL, 'Краснодар', 'Краснодарский Край 23', 2, NULL, NULL, NULL, NULL, '1471938481', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'http://zakupki.gov.ru/epz/order/notice/zk44/view/common-info.html?regNumber=0318200066116000286\r\n'),
(150, 1471457322, '0318200066116000288', 'ЗК', '1471986000', 'ГБУЗ Кптд', '2309038980', 79036, 37800, '3', NULL, 'Краснодар', 'Краснодарский Край 23', 2, NULL, NULL, NULL, NULL, '1471938328', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'http://zakupki.gov.ru/epz/order/notice/zk44/view/common-info.html?regNumber=0318200066116000288\r\n'),
(151, 1471457322, '0158300020316000363', 'ЭА', '1472072400', '"муниципальное бюджетное учреждение ""Центр социального обслуживания граждан пожилого возраста и инвалидов"" Неклиновского района Ростовской области"', '', 742141, 265233, '6', '', 'Специалист', 'Ростовская обл. 61', 1, NULL, '1472418000', NULL, NULL, '1471580388', '4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'http://zakupki.gov.ru/epz/order/notice/ea44/view/common-info.html?regNumber=0158300020316000363\r\n'),
(152, 1471457322, '0129200005316003358', 'ЭА', '1472072400', '"ГОСУДАРСТВЕННОЕ БЮДЖЕТНОЕ УЧРЕЖДЕНИЕ ЗДРАВООХРАНЕНИЯ ""МИХАЙЛОВСКАЯ ГОРОДСКАЯ ДЕТСКАЯ БОЛЬНИЦА"""', '', 680828, 320000, '6', NULL, 'Специалист', 'Волгоградская обл. 34', 1, NULL, '1472677200', NULL, NULL, '1471519484', '4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'http://zakupki.gov.ru/epz/order/notice/ea44/view/common-info.html?regNumber=0129200005316003358\r\n'),
(153, 1471467600, '0318200059716000038', 'ЭА', '1472158800', 'ГБУ КК ', '2310080384', 247417, 86700, '6', '', 'Краснодар', 'Краснодарский Край 23', 1, NULL, '1472677200', NULL, NULL, '1471953465', '4', '', 0, '', '', '', '', NULL, NULL, 4, NULL),
(154, 1471515236, '0318200066116000289 ', 'ЗК', '1472418000', 'Новомышастовского филиала ГБУЗ КПТД', '2309038980', 391488, 201600, '3', NULL, 'Краснодар', 'Краснодарский Край 23', 2, NULL, NULL, NULL, NULL, '1471944172', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'http://zakupki.gov.ru/epz/order/quicksearch/search_eis.html?searchString=0318200066116000289+&morphology=on\r\n'),
(157, 1471582965, '0121100006816000268', 'ЭА', '1472158800', 'УСД в Ставропольском Крае', '2635043628', 735513, NULL, '2', 'маммография ', 'Специалист', 'Ставропольский Край 26', NULL, NULL, NULL, NULL, NULL, '1471608395', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://zakupki.gov.ru/epz/order/notice/ea44/view/common-info.html?regNumber=0121100006816000268\r\n'),
(158, 1471582965, '31604009606', 'ЭЗЦ', '1472418000', '"НК ""Роснефть""- Кубаньнефтепродукт, ПАО"', '2309003018', 6282840, NULL, '1', NULL, NULL, 'Краснодарский Край 23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://zakupki.gov.ru/epz/order/extendedsearch/results.html?searchString=&morphology=on&openMode=USE_DEFAULT_PARAMS&pageNumber=1&sortDirection=false&recordsPerPage=_10&showLotsInfoHidden=false&fz44=on&fz223=on&orderNumber=31604009606&placingWaysList=&placingWaysList223=&priceFrom=0&priceTo=200000000000%C2%A4cyId=1&participantName=&publishDateFrom=&publishDateTo=&updateDateFrom=&updateDateTo=&customerTitle=&customerCode=&customerFz94id=&customerFz223id=&customerInn=&agencyTitle=&agencyCode=&agenc'),
(159, 1471582965, '0118300002216000007', 'ЗК', '1472590800', 'Департамент Финансов Администрации Муниципального Образования Город Краснодар', '2310056575', 259428, NULL, '2', 'маммография ', 'Специалист', 'Краснодарский Край 23', NULL, NULL, NULL, NULL, NULL, '1471842467', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://zakupki.gov.ru/epz/order/notice/zk44/view/common-info.html?regNumber=0118300002216000007\r\n'),
(160, 1471582965, '31604008801', 'ЗЦ', '1471986000', 'Краснодарский ЦСМ, ФБУ', '2309000994', 180370, NULL, '2', 'Местонахождение Исполнителя – удаленностью не более 7 км от места нахождения Заказчика на случай проведения необходимых лабораторных и функциональных исследований при отсутствии работника в назначенный день прохождения медицинского осмотра.', 'Специалист', 'Краснодарский Край 23', NULL, NULL, NULL, NULL, NULL, '1471954202', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://zakupki.gov.ru/epz/order/extendedsearch/results.html?searchString=&morphology=on&openMode=USE_DEFAULT_PARAMS&pageNumber=1&sortDirection=false&recordsPerPage=_10&showLotsInfoHidden=false&fz44=on&fz223=on&orderNumber=31604008801&placingWaysList=&placingWaysList223=&priceFrom=0&priceTo=200000000000%C2%A4cyId=1&participantName=&publishDateFrom=&publishDateTo=&updateDateFrom=&updateDateTo=&customerTitle=&customerCode=&customerFz94id=&customerFz223id=&customerInn=&agencyTitle=&agencyCode=&agenc'),
(161, 1471601019, '0321100002116000092 ', 'ЭА', '1472418000', '"ФГБУ санаторий ""Русь"" Минздрава России"', '2627013098', 404520, 217158, '6', NULL, 'Специалист', 'Железноводск', 1, NULL, '1473022800', NULL, NULL, '1471958530', '4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'http://zakupki.gov.ru/epz/order/extendedsearch/results.html?searchString=%D0%BE%D1%81%D0%BC%D0%BE%D1%82%D1%80&morphology=on&openMode=USE_DEFAULT_PARAMS&pageNumber=1&sortDirection=false&recordsPerPage=_10&showLotsInfoHidden=false&fz44=on&fz223=on&orderNumber=&placingWaysList=&placingWaysList223=&priceFrom=0&priceTo=200000000000&currencyId=1&participantName=&publishDateFrom=&publishDateTo=&updateDateFrom=&updateDateTo=&customerTitle=&customerCode=&customerFz94id=&customerFz223id=&customerInn=&agen'),
(162, 1471841644, '31604014719', 'ЗК', '1472072400', 'Кореновское, ФГУП', '2335004339', 180000, NULL, '1', NULL, NULL, 'Краснодарский Край 23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://zakupki.gov.ru/epz/order/extendedsearch/results.html?searchString=&morphology=on&openMode=USE_DEFAULT_PARAMS&pageNumber=1&sortDirection=false&recordsPerPage=_10&showLotsInfoHidden=false&fz44=on&fz223=on&orderNumber=31604014719&placingWaysList=&placingWaysList223=&priceFrom=0&priceTo=200000000000%C2%A4cyId=1&participantName=&publishDateFrom=&publishDateTo=&updateDateFrom=&updateDateTo=&customerTitle=&customerCode=&customerFz94id=&customerFz223id=&customerInn=&agencyTitle=&agencyCode=&agenc'),
(163, 1471841644, '0358300437016000007', 'ЭА', '1472418000', 'МБУЗ ГП Г.Шахты, БУ', '6155065700', 44016, NULL, '2', 'не рентабильно', 'Специалист', 'Ростовская обл. 61', NULL, NULL, NULL, NULL, NULL, '1471870639', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://zakupki.gov.ru/epz/order/notice/ea44/view/common-info.html?regNumber=0358300437016000007\r\n'),
(164, 1471841644, '0358300437016000010', 'ЗК', '1472418000', 'МБУЗ ГП Г.Шахты, БУ', '6155065700', 26110, 15001, '6', '', 'Специалист', 'Ростовская обл. 61', 1, NULL, '1472418000', NULL, NULL, '1472014087', '4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'http://zakupki.gov.ru/epz/order/notice/zk44/view/common-info.html?regNumber=0358300437016000010\r\n'),
(165, 1471813200, '0318200073016000040', 'ЭА', '1472418000', 'Министерство Физической Культуры и Спорта Краснодарского Края', '2310032408', 100564, 0, '1', '', NULL, 'Краснодарский Край 23', NULL, NULL, NULL, NULL, NULL, '', NULL, '', 0, '', '', '', '', NULL, NULL, NULL, 'http://zakupki.gov.ru/epz/order/notice/ea44/view/common-info.html?regNumber=0318200073016000040\r\n'),
(166, 1471841644, '0176200005516001449', 'ЭА', '1472504400', '"ГБУЗ РА ""МГКБ"""', '0105025330', 49345, 31296, '6', NULL, 'Специалист', 'Адыгея Респ. 01', 1, NULL, '1473022800', NULL, NULL, '1471930137', '4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'http://zakupki.gov.ru/epz/order/notice/ea44/view/common-info.html?regNumber=0176200005516001449\r\n'),
(167, 1471841644, '0176200005516001450', 'ЭА', '1472504400', '"ГБУЗ РА ""МГКБ"""', '0105025330', 151230, 50000, '6', NULL, 'Специалист', 'Адыгея Респ. 01', 1, NULL, '1473022800', NULL, NULL, '1471930323', '4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'http://zakupki.gov.ru/epz/order/notice/ea44/view/common-info.html?regNumber=0176200005516001450\r\n'),
(168, 1471841644, '0129100008316000059', 'ЗК', '1472590800', 'ТУ Росимущества в Волгоградской Области', '3444168900', 299990, NULL, '1', NULL, NULL, 'Волгоградская обл. 34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://zakupki.gov.ru/epz/order/notice/zk44/view/common-info.html?regNumber=0129100008316000059\r\n'),
(169, 1471841644, '0318200005316000025', 'ЗК', '1472590800', '"ГКУ со КК ""Гулькевичский Реабилитационный Центр"", КУ"', '2329016583', 406979, NULL, '1', NULL, NULL, 'Краснодарский Край 23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://zakupki.gov.ru/epz/order/notice/zk44/view/common-info.html?regNumber=0318200005316000025\r\n'),
(170, 1471841644, '0358300437016000008', 'ЭА', '1472418000', 'МБУЗ ГП Г.Шахты, БУ', '6155065700', 25009, NULL, '2', 'не рентабельно', 'Специалист', 'Ростовская обл. 61', NULL, NULL, NULL, NULL, NULL, '1471870595', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://zakupki.gov.ru/epz/order/notice/ea44/view/common-info.html?regNumber=0358300437016000008\r\n'),
(171, 1471899600, '0358300445116000014', 'ЭА', '1470862800', 'МУНИЦИПАЛЬНОЕ БЮДЖЕТНОЕ УЧРЕЖДЕНИЕ "ЦЕНТР СОЦИАЛЬНОГО ОБСЛУЖИВАНИЯ НАСЕЛЕНИЯ ОКТЯБРЬСКОГО РАЙОНА ГОРОДА РОСТОВА-НА-ДОНУ"', '6165191380', 272338, 66161, '6', '', 'Специалист', 'Ростов-на-Дону', 1, NULL, '1471554000', NULL, NULL, '1471931821', '2', NULL, 66161, '6167124660', 'ООО МЦ Гиппократ', '', 'Проведение медицинских осмотров (обследований) работников МБУ "ЦСОН Октябрьского района г. Ростова-на-Дону"', NULL, NULL, 1, NULL),
(172, 1471932713, '0318300552916000667', 'ЭА', '1472504400', '"МУНИЦИПАЛЬНОЕ БЮДЖЕТНОЕ УЧРЕЖДЕНИЕ ЗДРАВООХРАНЕНИЯ ГОРОДА АРМАВИРА ""ПЕРИНАТАЛЬНЫЙ ЦЕНТР"""', '', 196694, NULL, '1', NULL, NULL, 'Краснодарский Край 23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://zakupki.gov.ru/epz/order/notice/ea44/view/common-info.html?regNumber=0318300552916000667\r\n'),
(173, 1471932713, '31604018449', 'ЗП', '1472418000', 'НЭСК-Электросети, АО', '2308139496', 990000, NULL, '1', NULL, NULL, 'Краснодарский Край 23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://zakupki.gov.ru/epz/order/extendedsearch/results.html?searchString=&morphology=on&openMode=USE_DEFAULT_PARAMS&pageNumber=1&sortDirection=false&recordsPerPage=_10&showLotsInfoHidden=false&fz44=on&fz223=on&orderNumber=31604018449&placingWaysList=&placingWaysList223=&priceFrom=0&priceTo=200000000000%C2%A4cyId=1&participantName=&publishDateFrom=&publishDateTo=&updateDateFrom=&updateDateTo=&customerTitle=&customerCode=&customerFz94id=&customerFz223id=&customerInn=&agencyTitle=&agencyCode=&agenc'),
(174, 1471932713, '0158100004416000034', 'ЭА', '1472504400', 'Управление Роскомнадзора по Ростовской Области', '6164224201', 116159, NULL, '2', 'маммография', 'Специалист', 'Ростовская обл. 61', NULL, NULL, NULL, NULL, NULL, '1471951067', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://zakupki.gov.ru/epz/order/notice/ea44/view/common-info.html?regNumber=0158100004416000034\r\n'),
(175, 1471932713, '0358100008916000048', 'ЭА', '1472590800', 'Российская Таможенная Академия', '5027053224', 214893, NULL, '1', NULL, NULL, 'Ростовская обл. 61', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://zakupki.gov.ru/epz/order/notice/ea44/view/common-info.html?regNumber=0358100008916000048\r\n'),
(176, 1471932713, '0318300529716000063', 'ЗК', '1472418000', '"МБУ ""ГБ № 1"" Уз М.О. г.Новороссийск"', '2315104180', 162000, NULL, '1', NULL, NULL, 'Краснодарский Край 23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://zakupki.gov.ru/epz/order/notice/zk44/view/common-info.html?regNumber=0318300529716000063\r\n'),
(177, 1471932713, '0318200043116000009', 'ЭА', '1472504400', 'Контрольно-Счетная Палата Краснодарского Края', '2309061852', 332268, NULL, '1', NULL, NULL, 'Краснодарский Край 23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://zakupki.gov.ru/epz/order/notice/ea44/view/common-info.html?regNumber=0318200043116000009\r\n'),
(178, 1471932713, '0358300087316000081', 'ЗК', '1472504400', '"МБУЗ ""РБ"" Азовского Района Ростовской Области, БУ"', '6101021985', 53690, 27000, '6', NULL, 'Специалист', 'Ростовская обл. 61', 1, NULL, '1472504400', NULL, NULL, '1472012410', '4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'http://zakupki.gov.ru/epz/order/notice/zk44/view/common-info.html?regNumber=0358300087316000081\r\n'),
(179, 1471932713, '0318200065716000013', 'ЭА', '1472504400', '"ГБПОУ КК ""КИТТ"""', '2311025450', 290203, NULL, '1', NULL, NULL, 'Краснодарский Край 23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://zakupki.gov.ru/epz/order/notice/ea44/view/common-info.html?regNumber=0318200065716000013\r\n'),
(180, 1471932713, '0321200035916000005', 'ЗК', '1472158800', 'Специальная (Коррекционная) Общеобразовательная Школа № 33 Города Ставрополя, ГКОУ', '2634026122', 113195, 103200, '6', NULL, 'Специалист', 'Ставропольский Край 26', 1, NULL, '1472158800', NULL, NULL, '1471946546', '4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'http://zakupki.gov.ru/epz/order/notice/zk44/view/common-info.html?regNumber=0321200035916000005\r\n'),
(181, 1471932713, '0358300380216000247', 'ЭА', '1472504400', 'УПРАВЛЕНИЕ СОЦИАЛЬНОЙ ЗАЩИТЫ НАСЕЛЕНИЯ АДМИНИСТРАЦИИ ОКТЯБРЬСКОГО РАЙОНА РОСТОВСКОЙ ОБЛАСТИ', '', 66167, NULL, '1', NULL, NULL, 'Ростовская обл. 61', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://zakupki.gov.ru/epz/order/notice/ea44/view/common-info.html?regNumber=0358300380216000247\r\n'),
(182, 1471932713, '0318200034916000196', 'ЭА', '1472504400', '"ГБУЗ ""ПТД № 6"" МЗ КК"', '2303010788', 87595, NULL, '1', NULL, NULL, 'Краснодарский Край 23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://zakupki.gov.ru/epz/order/notice/ea44/view/common-info.html?regNumber=0318200034916000196\r\n'),
(183, 1471932713, '0318200066116000292', 'ЗК', '1472418000', 'ГБУЗ Кптд', '2309038980', 26807, NULL, '1', NULL, NULL, 'Краснодарский Край 23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://zakupki.gov.ru/epz/order/notice/zk44/view/common-info.html?regNumber=0318200066116000292\r\n'),
(184, 1471932713, '0318200034916000194', 'ЭА', '1472504400', '"ГБУЗ ""ПТД № 6"" МЗ КК"', '2303010788', 180252, NULL, '1', NULL, NULL, 'Краснодарский Край 23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://zakupki.gov.ru/epz/order/notice/ea44/view/common-info.html?regNumber=0318200034916000194\r\n'),
(185, 1472014382, '0358300437016000011', 'ЗК', '1472590800', 'МБУЗ ГП Г.Шахты, БУ', '6155065700', 32686, NULL, '1', NULL, NULL, 'Ростовская обл. 61', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://zakupki.gov.ru/epz/order/notice/zk44/view/common-info.html?regNumber=0358300437016000011\r\n'),
(186, 1472014382, '0358200039816000163', 'ЭА', '1472590800', '"ГБУ РО ""СТБ"""', '6166048255', 399363, NULL, '1', NULL, NULL, 'Ростовская обл. 61', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://zakupki.gov.ru/epz/order/notice/ea44/view/common-info.html?regNumber=0358200039816000163\r\n'),
(187, 1472014382, '0321300176116000112', 'ЗК', '1472677200', '"ГБУЗ СК ""Пятигорский МРД"""', '2632034569', 496084, NULL, '1', NULL, NULL, 'Ставропольский Край 26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://zakupki.gov.ru/epz/order/notice/zk44/view/common-info.html?regNumber=0321300176116000112\r\n'),
(188, 1472014382, '0321300176116000113', 'ЗК', '1472677200', '"ГБУЗ СК ""Пятигорский МРД"""', '2632034569', 300000, NULL, '1', NULL, NULL, 'Ставропольский Край 26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://zakupki.gov.ru/epz/order/notice/zk44/view/common-info.html?regNumber=0321300176116000113\r\n'),
(189, 1472014382, '31604020575', 'ЗП', '1472590800', 'Газпром Газораспределение Ростов-На-Дону, ПАО', '6163000368', 187200, NULL, '1', NULL, NULL, 'Ростовская обл. 61', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://zakupki.gov.ru/epz/order/extendedsearch/results.html?searchString=&morphology=on&openMode=USE_DEFAULT_PARAMS&pageNumber=1&sortDirection=false&recordsPerPage=_10&showLotsInfoHidden=false&fz44=on&fz223=on&orderNumber=31604020575&placingWaysList=&placingWaysList223=&priceFrom=0&priceTo=200000000000%C2%A4cyId=1&participantName=&publishDateFrom=&publishDateTo=&updateDateFrom=&updateDateTo=&customerTitle=&customerCode=&customerFz94id=&customerFz223id=&customerInn=&agencyTitle=&agencyCode=&agenc'),
(190, 1472014382, '31604020673', 'ЗП', '1472590800', 'Газпром Газораспределение Ростов-На-Дону, ПАО', '6163000368', 451500, NULL, '1', NULL, NULL, 'Ростовская обл. 61', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://zakupki.gov.ru/epz/order/extendedsearch/results.html?searchString=&morphology=on&openMode=USE_DEFAULT_PARAMS&pageNumber=1&sortDirection=false&recordsPerPage=_10&showLotsInfoHidden=false&fz44=on&fz223=on&orderNumber=31604020673&placingWaysList=&placingWaysList223=&priceFrom=0&priceTo=200000000000%C2%A4cyId=1&participantName=&publishDateFrom=&publishDateTo=&updateDateFrom=&updateDateTo=&customerTitle=&customerCode=&customerFz94id=&customerFz223id=&customerInn=&agencyTitle=&agencyCode=&agenc');

-- --------------------------------------------------------

--
-- Структура таблицы `org`
--

CREATE TABLE IF NOT EXISTS `org` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=cp1251 AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `org`
--

INSERT INTO `org` (`id`, `name`) VALUES
(1, 'Гиппократ'),
(2, 'Гиппократ +'),
(3, 'Гиппократ 21 век'),
(4, 'Гиппократ Краснодар');

-- --------------------------------------------------------

--
-- Структура таблицы `profile`
--

CREATE TABLE IF NOT EXISTS `profile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `version` varchar(255) DEFAULT NULL,
  `guid` varchar(255) DEFAULT NULL,
  `type` tinyint(3) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=cp1251 ROW_FORMAT=COMPACT AUTO_INCREMENT=11 ;

--
-- Дамп данных таблицы `profile`
--

INSERT INTO `profile` (`id`, `name`, `status`, `version`, `guid`, `type`) VALUES
(7, 'тестовый', NULL, NULL, '7c7084ce-c721-11e5-a847-d43d7eebfbd6', 0),
(8, 'тестовый2', NULL, NULL, '14165d03-c722-11e5-a847-d43d7eebfbd6', 1),
(9, '234', NULL, NULL, '41a60c0f-1810-11e6-ae70-d43d7eebfbd6', 0),
(10, 'ененгененг', NULL, NULL, '76440f78-1810-11e6-ae70-d43d7eebfbd6', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `setup`
--

CREATE TABLE IF NOT EXISTS `setup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `var` varchar(40) DEFAULT NULL,
  `value` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=cp1251 ROW_FORMAT=DYNAMIC AUTO_INCREMENT=187 ;

--
-- Дамп данных таблицы `setup`
--

INSERT INTO `setup` (`id`, `var`, `value`) VALUES
(1, 'SMTP_settings', 'mail=false;\r\nauth=false;\r\nHost=localhost;\r\nPort=25;\r\nUsername=;\r\nPassword='),
(19, 'FCKeditor', '1'),
(152, 'news_pbcount', '10'),
(153, 'news_pscount', '5'),
(154, 'news_fcount', '3'),
(155, 'news_acount', '30'),
(156, 'catalog_fcount', '30'),
(157, 'search_fcount', '100'),
(158, 'search_num', '100'),
(159, 'dollar_kurs', '32.5072'),
(160, 'euro_kurs', '45.4873'),
(161, 'auth_fcount', '10'),
(162, 'auth_acount', '50'),
(163, 'mail_manage', 'From=tvcd@yandex.ru;\r\nFromName=Сайт ;\r\nrecipient=tvcd@yandex.ru;\r\nSubject=Тема'),
(164, 'mail_consult', 'From=tvcd@yandex.ru;\r\nFromName=Сайт ;\r\nrecipient=;\r\nSubject=Тема'),
(165, 'city_acount', '20'),
(166, 'street_acount', '20'),
(167, 'house_acount', '20'),
(168, 'company_acount', '20'),
(169, 'law_fcount', '2'),
(170, 'law_acount', '10 '),
(171, 'tsjnews_fcount', '2'),
(172, 'mail_order', 'From=a@m.ru;\r\nFromName=;\r\nrecipient=a@m.ru;\r\nSubject='),
(173, 'mail_questions', 'From=a@m.ru;\r\nFromName=;\r\nrecipient=a@m.ru;\r\nSubject='),
(174, 'mail_feed', 'From=a@m.ru;\r\nFromName=;\r\nrecipient=a@m.ru;\r\nSubject='),
(175, 'tsjnews_acount', '10'),
(176, 'galery_acount', '10'),
(177, 'mail_register', 'From=tvcd@yandex.ru;\r\nFromName=;\r\nrecipient=tvcd@yandex.ru;\r\nSubject=регистрация'),
(178, 'zakupki_fcount', '2'),
(179, 'act_category_acount', '50'),
(180, 'reklama_fcount', '10'),
(181, 'vendor_acount', '10'),
(182, 'zakupki_acount', '10'),
(183, 'offer_acount', '10'),
(184, 'reklama_acount', '10'),
(185, 'rek_acount', '10'),
(186, 'deals_acount', '50');

-- --------------------------------------------------------

--
-- Структура таблицы `site_moduls`
--

CREATE TABLE IF NOT EXISTS `site_moduls` (
  `Id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `command` varchar(255) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM  DEFAULT CHARSET=cp1251 ROW_FORMAT=DYNAMIC AUTO_INCREMENT=138 ;

--
-- Дамп данных таблицы `site_moduls`
--

INSERT INTO `site_moduls` (`Id`, `name`, `command`, `description`) VALUES
(10, 'Каталог', '/catalog/front.php', NULL),
(11, 'Каталог-главная', '/catalog/panel.php', NULL),
(12, 'Каталог-меню', '/catalog/menu.php', NULL),
(14, 'Авторизация-панель', '/auth/front.php', NULL),
(15, 'Авторизация-вход', '/auth/front.php', NULL),
(16, 'Поиск-панель', '/search/panel.php', NULL),
(17, 'Личный кабинет', '/cabinet/front.php', NULL),
(18, 'Корзина', '/basket/front.php', NULL),
(19, 'Поиск', '/search/front.php', NULL),
(20, 'Курсы валют', '/catalog/kurs.php', NULL),
(21, 'Оформление заказа', '/catalog/order.php', NULL),
(22, 'авторизация-главная', '/auth/messages.php', NULL),
(23, 'всплыв в каталоге', '/auth/pupup.php', NULL),
(31, NULL, '/deals/front.php', NULL),
(40, 'Новости', '/activations/front.php', NULL),
(41, 'Новости', '/news/panel.php', NULL),
(42, 'дом панель', '/house/panel.php', NULL),
(43, 'Законодательство', '/law/front.php', NULL),
(44, 'левое меню', '/menu/menu_sub.php', NULL),
(45, 'о нас', '/about/front.php', NULL),
(46, 'правление', '/manage/front.php', NULL),
(47, 'Службы сервиса', '/service/front.php', NULL),
(48, 'Отчеты', '/reports/front.php', NULL),
(49, 'новости на главной', '/news/panel.php', NULL),
(50, 'консультациии', '/consult/front.php', NULL),
(51, 'организации', '/orgs/front.php', NULL),
(52, 'профили', '/deals/s.php', NULL),
(53, 'Опрос', '/deals/i.php', NULL),
(54, 'ниж меню', '/menu/menu_buttom.php', NULL),
(55, 'нижнее меню', '/reklama/front.php', NULL),
(56, 'обр связь', '/feedb/front.php', NULL),
(57, 'лич. каб поставщиков', '/vendor/front.php', NULL),
(58, 'автор. поставщика', '/vendor/messages.php', NULL),
(59, 'закупки', '/zakupki/front.php', NULL),
(60, 'меню поставщ', '/vendor/menu_vendor.php', NULL),
(61, 'закупки поставщика', '/zakupki/vendor.php', NULL),
(62, 'тарифы', '/tarif/front.php', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `site_pages`
--

CREATE TABLE IF NOT EXISTS `site_pages` (
  `id` tinyint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `content` longtext,
  `sort` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=cp1251 ROW_FORMAT=DYNAMIC AUTO_INCREMENT=126 ;

--
-- Дамп данных таблицы `site_pages`
--

INSERT INTO `site_pages` (`id`, `name`, `content`, `sort`) VALUES
(5, 'license', '<p style="text-align:justify">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut tincidunt justo sed tellus consequat feugiat. Quisque ut dapibus metus. Quisque augue ipsum, tincidunt vitae fringilla sit amet, tristique non odio. Duis egestas pretium molestie. Aenean elementum fringilla erat quis rutrum. Ut rutrum sodales diam, vel pretium nulla egestas et. In non velit quis urna elementum suscipit. Mauris neque arcu, lacinia sed molestie non, molestie ac purus. Suspendisse in nibh vitae enim adipiscing eleifend. Vivamus eleifend orci a turpis consectetur varius. Donec adipiscing, augue ut iaculis varius, orci est porttitor quam, eu feugiat tellus lorem non lacus. Aenean ante sem, placerat eu ornare vel, iaculis non elit. Nullam sagittis vestibulum pulvinar. In sagittis adipiscing sollicitudin. Phasellus et dui sit amet dolor sodales eleifend ut nec leo. Curabitur porta porttitor sollicitudin.</p>\r\n\r\n<p style="text-align:justify">Vivamus lobortis, nisi sed auctor faucibus, turpis ante ornare metus, a egestas massa felis eu lacus. Sed tincidunt accumsan tortor, non fermentum metus eleifend vitae. Sed id massa a risus venenatis cursus eu nec est. Donec porttitor est in est hendrerit convallis. Praesent vitae quam nisl. Pellentesque bibendum varius justo sed posuere. Maecenas mi ante, vestibulum id lacinia auctor, iaculis a purus. Vivamus eget eros turpis.</p>\r\n\r\n<p style="text-align:justify">Nam vehicula adipiscing massa ac scelerisque. Fusce blandit dui sit amet risus tincidunt sed condimentum metus lobortis. Aliquam erat volutpat. Vivamus diam eros, cursus nec aliquam accumsan, lacinia vitae urna. Duis vel arcu id nibh pharetra convallis. Nullam fermentum egestas eros quis suscipit. Nunc quis fringilla sem. Phasellus ultrices turpis a dui rutrum consectetur. In bibendum lectus at neque laoreet semper. Nullam hendrerit, libero non posuere egestas, urna lectus aliquam ante, placerat laoreet ligula enim eu mauris. Phasellus rutrum convallis tellus, eu faucibus erat commodo quis. Aliquam erat volutpat. Quisque sit amet tortor vitae odio gravida bibendum quis et enim.</p>\r\n\r\n<p style="text-align:justify">Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed magna odio, pretium et semper vel, semper in lorem. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed ornare nulla augue. Cras leo nunc, sodales id luctus in, iaculis et purus. Donec sit amet sagittis quam. Donec quis massa et erat scelerisque molestie sed sit amet justo. Fusce in massa sed lectus egestas venenatis. Proin vitae sagittis dolor.</p>\r\n\r\n<p style="text-align:justify">Nunc convallis tincidunt tellus non accumsan. In enim justo, mattis eget pellentesque nec, pellentesque sagittis arcu. Proin dictum tellus eget nisl fermentum eget faucibus sapien aliquet. Nunc cursus iaculis lacinia. Curabitur arcu orci, bibendum vel scelerisque vel, molestie id odio. Sed sagittis facilisis lacus, vitae fermentum justo dapibus sit amet. Praesent lacus purus, porta non tempor ut, suscipit ut nisi. Praesent fermentum risus ut erat commodo luctus sed ut enim.</p>\r\n', NULL),
(7, 'reklama', '<p><img src="/i/reklama.png" /></p>\r\n', NULL),
(9, 'consult', '', NULL),
(10, 'index', '<p> </p>\r\n\r\n<h2>Уважаемый пользователь!</h2>\r\n\r\n<p> </p>\r\n\r\n<p style="text-align:justify">\r\n\r\nГруппа медицинских компаний "ГИППОКРАТ" приветствует Вас на страницах интерактивной системы управления процессом участия в закупках, которые организуют государственные и муниципальные заказчики, а также госкомпании и коммерческие предприятия. \r\n </p>\r\n\r\n<p> </p>\r\n<p> </p>\r\nДоступ к информации возможен только зарегистрированным в системе пользователям. Для получения логина и пароля необходимо обратиться к администратору системы по телефону: (863) 294-96-09 либо по адресу электронной почты: mc.gipp@yandex.ru\r\n</p>\r\n\r\n<p>\r\n<p> </p>\r\nПо вопросам работы системы обращайтесь к администратору.\r\n\r\nУдачной охоты!\r\n</p>', 1),
(17, 'error404', '<div class=\\"message\\">Вы перешли по устаревшей или не существующей ссылке</div>\r\n', 1),
(62, 'gallery', '', 1),
(63, 'news', 'lkjlkjjk', 1),
(73, 'company', '<p><font size=\\"4\\"><u>Филиал № 21</u> </font></p>\r\n<p><font size=\\"4\\">Aдрес: г. Ростов-на-Дону, пр.40лет Победы, 308/3 </font></p>\r\n<p><font size=\\"4\\">Режим работы: 9.00-19.00 Выходные: Пт.,Сб. Сан.день - последн. вторник месяца </font></p>\r\n<p><font size=\\"4\\">Телефон: 257-33-11,257-33-31. </font></p>\r\n<p><font size=\\"4\\">E-mail: </font><a href=\\"mailto:f21@donlib.ru\\"><font size=\\"4\\">f21@donlib.ru</font></a><font size=\\"4\\"> </font></p>\r\n<p><font size=\\"4\\">&nbsp;</font></p>\r\n<p><font size=\\"4\\">ост.: &ldquo;40-летия Победы&rdquo; (бывшая &ldquo;Конечная&rdquo;) Год основания - 1969. </font></p>\r\n<p><font size=\\"4\\">Читательское назначение - обслуживание взрослых и детей. </font></p>\r\n<p><font size=\\"4\\">Количество пользователей - 6 900. </font></p>\r\n<p><font size=\\"4\\">Качественный состав фонда - универсальный. </font></p>\r\n<p><font size=\\"4\\">Клубы и любительские объединения: </font></p>\r\n<p><font size=\\"4\\">&bull;&ldquo;Берегиня&rdquo; - женский клуб. </font></p>\r\n<p><font size=\\"4\\">&bull;&quot;Солнышко&quot; - детский клуб.</font></p>', NULL),
(90, 'home_panel', NULL, NULL),
(91, 'p_1240463485', '', NULL),
(93, 'search', '', NULL),
(94, 'p_1339734922', '<div><center><h2> <font color=\\"008080\\"> Филиал № 21\r\n<div> <font color=\\"000000\\"> Aдрес: г. Ростов-на-Дону, пр.40лет Победы, 308/3 <br>\r\nРежим работы: 9.00-19.00 <br> \r\nВыходные: Пт.,Сб. <br>\r\nСан.день - последн. вторник месяца <br> \r\nТелефон: 257-33-11,257-33-31. <br>\r\nE-mail: f21@donlib.ru <br>\r\nост.: “40-летия Победы” (бывшая “Конечная”) <br>\r\n\r\nГод основания - 1969. <br>\r\nЧитательское назначение - обслуживание взрослых и детей. <br> \r\nКоличество пользователей - 6 900. <br>\r\nКачественный состав фонда - универсальный. <br> \r\n\r\nКлубы и любительские объединения: <br>\r\n•“Берегиня” - женский клуб. <br>\r\n•\\"Солнышко\\" - детский клуб. <div> </font> </h2></center></div><br>', NULL),
(95, 'p_1339754666', '<table border=\\"1\\" cols=\\"2\\">\r\n    <tbody>\r\n        <tr>\r\n            <th>\r\n            <p align=\\"center\\">Ф.И.О.</p>\r\n            </th>\r\n            <div align=\\"center\\">\r\n            <th>Должность</th>\r\n            </div>\r\n            <th>\r\n            <p align=\\"center\\">Отдел</p>\r\n            </th>\r\n        </tr>\r\n        <tr align=\\"center\\">\r\n            <td height=\\"70\\">\r\n            <p align=\\"center\\">Волчкова Валентина Григорьевна</p>\r\n            </td>\r\n            <td>\r\n            <p align=\\"center\\">Заведующая</p>\r\n            </td>\r\n            <td>\r\n            <p align=\\"center\\">Абонемент</p>\r\n            </td>\r\n        </tr>\r\n        <tr align=\\"center\\">\r\n            <td>\r\n            <p align=\\"center\\">Ячейка столбца первый, ряд 2</p>\r\n            </td>\r\n            <td>\r\n            <p align=\\"center\\">Ячейка столбца 2, ряд 2</p>\r\n            </td>\r\n            <td>\r\n            <p align=\\"center\\">Ячейка столбца 2, ряд 2</p>\r\n            </td>\r\n        </tr>\r\n    </tbody>\r\n</table>', NULL),
(96, 'p_1339754799', '<a name=\\"jjj\\"></a><blockquote style=\\"MARGIN-RIGHT: 0px\\" dir=\\"ltr\\">\r\n<div align=\\"left\\"><font color=\\"#008080\\"><font size=\\"4\\">В ЦБС им.Тургенева имеется в наличии следующее оборудование: <br />\r\n</font><font color=\\"#000000\\"><font size=\\"4\\">-локальная сеть; <br />\r\n-7 персональных компьютеров; <br />\r\n-МФУ Panasonic - 7 шт.; <br />\r\n-принтер HP - 5 шт.</font> <br />\r\n</font></font></div>\r\n</blockquote>\r\n<h2 align=\\"left\\"><blockquote>\r\n<p><font color=\\"#008080\\"><font size=\\"3\\">Используется следующее ПО: <br />\r\n</font><font color=\\"#000000\\" size=\\"3\\">Самым основным программным средством на предприятии является Opac Global, разработанное предприятием &quot;ДИТ-М&quot;. <br />\r\nВ настоящее время компанией &laquo;ДИТ-М&raquo; разработаны 3 версии АБИС. OPAC-Global &ndash; полнофункциональная автоматизированная библиотечно-информационная система, <br />\r\nреализованная в архитектуре стандартных web-серверов и web-клиентов. <br />\r\nПредназначена для автоматизации корпоративной работы сети библиотек, <br />\r\nвключающая библиотеки разных уровней. Корпоративная система может быть реализована как по типу централизованного сервера,<br />\r\nтак и по типу распределенных серверов с единым протоколом обмена данными http. <br />\r\nВ обоих случаях, все функции пользователь выполняет в среде стандартного web-браузера. Число библиотек в сети может быть 100 и более. &bull; OPAC-Global лежит в основе функционирования Сводного каталога библиотек России Центра ЛИБНЕТ (www.nilc.ru). &bull; OPAC-midi &ndash; функционально сокращенная АБИС OPAC-Global, но достаточная для автоматизации крупных библиотек или небольших библиотечных сетей. &bull; OPAC-mini &ndash; АБИС, предназначенная для автоматизации средних и мелких библиотек в объеме необходимых функций, <br />\r\nработающих преимущественно в режиме заимствования библиографических и авторитетных записей из Сводных каталогов различного уровня. </font></font></p>\r\n</blockquote></h2>\r\n<blockquote style=\\"MARGIN-RIGHT: 0px\\" dir=\\"ltr\\">\r\n<div align=\\"left\\"><font color=\\"#008080\\"><font size=\\"4\\">Архитектура программного комплекса и протоколы обмена данными <br />\r\n</font><font color=\\"#000000\\"><font size=\\"4\\">Программное обеспечение построено в архитектуре клиент-сервер. <br />\r\nСетевым протоколом обмена данными между клиентами и серверами является HTTP. <br />\r\nСистема управления базами данных (СУБД) - ADABAS. <br />\r\nКлиентская часть работает в стандартных web-браузерах на IBM PC соместимых компьютерах. <br />\r\nСерверная часть работает на однопроцессорных и многопроцессорных компьютерах, поддерживающих стандартные web-сервера и сервера баз данных. <br />\r\nIBM PC совместимые компьютеры, OS MS Windows NT/2000 <br />\r\nSUN, OS Solaris <br />\r\nIBM RS 6000, OS AIX <br />\r\nHP, OS HP-UX</font> <br />\r\nS 390, OS/390 <br />\r\n</font></font></div>\r\n</blockquote>', NULL),
(97, 'consult', '', NULL),
(98, 'about', '', NULL),
(99, 'manage', '', NULL),
(100, 'service', '', NULL),
(101, 'reports', '', NULL),
(103, 'tsg_news', '', NULL),
(104, 'opros', '', NULL),
(105, 'photo', '', NULL),
(106, 'zakupki', '', NULL),
(107, 'auth', NULL, NULL),
(108, 'project', '<p>I noticed that in order to deal with UTF-8 texts, without having to recompile php with the PCRE UTF-8 flag enabled, you can just add the following sequence at the start of your pattern: (*UTF8)</p>\r\n\r\n<p>for instance : &#39;#(*UTF8)[[:alnum:]]#&#39; will return TRUE for &#39;&eacute;&#39; where &#39;#[[:alnum:]]#&#39; will return FALSE</p>\r\n\r\n<p>found this very very useful tip after hours of research over the web directly in pcre website right here : http://www.pcre.org/pcre.txt<br />\r\nthere are many further informations about UTF-8 support in the lib</p>\r\n\r\n<p>hop that will help!</p>\r\n\r\n<p>--<br />\r\ncedric</p>\r\n', NULL),
(109, 'commerce', '<p>preg_filter returns<br />\r\nArray<br />\r\n(<br />\r\n[0] =&gt; A:C:1<br />\r\n[1] =&gt; B:C:a<br />\r\n[2] =&gt; A:2<br />\r\n[3] =&gt; B:b<br />\r\n[4] =&gt; A:3<br />\r\n[7] =&gt; A:4<br />\r\n)<br />\r\npreg_replace returns<br />\r\nArray<br />\r\n(<br />\r\n[0] =&gt; A:C:1<br />\r\n[1] =&gt; B:C:a<br />\r\n[2] =&gt; A:2<br />\r\n[3] =&gt; B:b<br />\r\n[4] =&gt; A:3<br />\r\n[5] =&gt; A<br />\r\n[6] =&gt; B<br />\r\n[7] =&gt; A:4<br />\r\n)</p>\r\n', NULL),
(110, 'userguide', '', NULL),
(111, 'feedb', '<p>Здесь вы можете задать вопросы разработчика сайта</p>\r\n', NULL),
(112, 'howto', '', NULL),
(113, NULL, NULL, NULL),
(114, 'vendor_auth', '', NULL),
(115, 'zakupki_1369735398', '', NULL),
(120, 'tarif', NULL, NULL),
(121, 'podbor', '', NULL),
(122, 'podgotov', '', NULL),
(123, 'uchastie', '', NULL),
(124, 'contract', '', NULL),
(125, 'otkaz', '', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `site_shablons`
--

CREATE TABLE IF NOT EXISTS `site_shablons` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `description` text,
  `preview_image` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=cp1251 ROW_FORMAT=DYNAMIC AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `site_shablons`
--

INSERT INTO `site_shablons` (`id`, `name`, `location`, `description`, `preview_image`) VALUES
(1, 'index', 'index.html', NULL, NULL),
(2, 'inner', 'inner.html', NULL, NULL),
(3, 'auth', 'auth.html', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `site_tree`
--

CREATE TABLE IF NOT EXISTS `site_tree` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort` int(10) unsigned DEFAULT NULL,
  `parent` int(10) unsigned DEFAULT NULL,
  `section` enum('0','1') DEFAULT '0',
  `fix` enum('0','1') DEFAULT '0',
  `pabl` enum('0','1') DEFAULT '1',
  `page` varchar(255) DEFAULT NULL,
  `menu` enum('0','1') DEFAULT '1',
  `name` varchar(255) DEFAULT NULL,
  `shablon` tinyint(6) DEFAULT NULL,
  `main_section` varchar(255) DEFAULT NULL,
  `section1` varchar(255) DEFAULT NULL,
  `section2` varchar(255) DEFAULT NULL,
  `section3` varchar(255) DEFAULT NULL,
  `section4` varchar(255) DEFAULT NULL,
  `section5` varchar(255) DEFAULT NULL,
  `section6` varchar(255) DEFAULT NULL,
  `FieldName` tinyint(3) unsigned DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `id_2` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=cp1251 ROW_FORMAT=DYNAMIC AUTO_INCREMENT=170 ;

--
-- Дамп данных таблицы `site_tree`
--

INSERT INTO `site_tree` (`id`, `sort`, `parent`, `section`, `fix`, `pabl`, `page`, `menu`, `name`, `shablon`, `main_section`, `section1`, `section2`, `section3`, `section4`, `section5`, `section6`, `FieldName`, `title`, `description`, `keywords`) VALUES
(1, 0, 0, '1', '1', '1', 'Структура', '1', 'Структура', 1, NULL, 'modul=42;', 'modul=44;', 'modul=54;', '', '', '', NULL, '', '', ''),
(2, 0, 1, '1', '1', '1', 'p_1208089819', '1', 'Главная', 1, 'page=10;', 'modul=42;', 'modul=44;', 'modul=54;', NULL, '', '', NULL, NULL, '', ''),
(3, 0, 2, '0', '0', '1', 'index', '1', 'Главная', 1, 'page=10;', 'modul=42;', 'modul=44;', 'modul=54;', NULL, '', '', NULL, 'Главная', '', ''),
(16, 59, 1, '1', '1', '1', 'error404', '0', 'Error404', 1, NULL, 'modul=42;', 'modul=44;', 'modul=54;', NULL, '', '', NULL, '', '', ''),
(17, 1, 16, '0', '1', '1', 'error404', '1', 'Error404', 1, NULL, 'modul=42;', 'modul=44;', 'modul=54;', NULL, '', '', NULL, '', '', ''),
(130, 65, 1, '1', '1', '1', 'auth', '0', 'Авторизация', 1, 'modul=22;', 'modul=42;', 'modul=44;', 'modul=54;', NULL, '', '', NULL, 'Авторизация', '', ''),
(131, 56, 130, '0', '1', '1', 'auth', '0', 'Авторизация', 1, 'modul=22;', 'modul=42;', 'modul=44;', 'modul=54;', NULL, '', '', NULL, 'Авторизация', '', ''),
(135, 68, 1, '1', '0', '1', NULL, '0', 'Профиль пользователя', 2, NULL, 'modul=42;', 'modul=44;', 'modul=54;', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(148, 81, 145, '0', '0', '1', 'userguide', '1', 'Пользовательское соглашение', 1, 'page=110;', 'modul=42;', NULL, 'modul=54;', NULL, NULL, NULL, NULL, 'Пользовательское соглашение', '', ''),
(151, 0, 149, '0', '0', '1', 'feedb', '1', 'Обратная связь', 1, 'page=111;modul=56;', 'modul=42;', NULL, 'modul=54;', NULL, NULL, NULL, NULL, 'Обратная связь', '', ''),
(152, 1, 135, '0', '0', '1', 'lk', '1', 'Личный кабинет', 1, 'modul=57;', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(160, 82, 1, '1', '0', '1', NULL, '1', 'Подборка', 1, NULL, 'modul=42;', NULL, 'page=3;', NULL, NULL, NULL, NULL, 'Подборка', '', ''),
(161, 83, 160, '0', '0', '1', 'podbor', '1', 'Подборка', 1, 'page=121;modul=31;', 'modul=42;', NULL, 'page=3;', NULL, NULL, NULL, NULL, 'Подборка', '', ''),
(162, 84, 1, '1', '0', '1', NULL, '1', 'Подготовка заявок', 1, NULL, 'modul=42;', NULL, 'page=3;', NULL, NULL, NULL, NULL, 'Подготовка заявок', '', ''),
(163, 85, 162, '0', '0', '1', 'prep', '1', 'Подготовка заявок', 1, 'page=122;modul=31;', 'modul=42;', NULL, 'page=3;', NULL, NULL, NULL, NULL, 'Подготовка заявок', '', ''),
(164, 86, 1, '1', '0', '1', NULL, '1', 'Участие', 1, NULL, 'modul=42;', NULL, 'page=3;', NULL, NULL, NULL, NULL, 'Участие', '', ''),
(165, 87, 164, '0', '0', '1', 'contrib', '1', 'Участие', 1, 'page=123;modul=31;', 'modul=42;', NULL, 'page=3;', NULL, NULL, NULL, NULL, 'Участие', '', ''),
(166, 88, 1, '1', '0', '1', NULL, '1', 'Контракты', 1, NULL, 'modul=42;', NULL, 'page=3;', NULL, NULL, NULL, NULL, 'Контракты', '', ''),
(167, 89, 166, '0', '0', '1', 'contract', '1', 'Контракты', 1, 'page=124;modul=31;', 'modul=42;', NULL, 'page=3;', NULL, NULL, NULL, NULL, 'Контракты', '', ''),
(168, 90, 1, '1', '0', '1', NULL, '1', 'Отказы', 1, NULL, 'modul=42;', NULL, 'page=3;', NULL, NULL, NULL, NULL, 'Отказы', '', ''),
(169, 91, 168, '0', '0', '1', 'otkaz', '1', 'Отказы', 1, 'page=125;modul=31;', 'modul=42;', NULL, 'page=3;', NULL, NULL, NULL, NULL, 'Отказы', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `status`
--

CREATE TABLE IF NOT EXISTS `status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=cp1251 ROW_FORMAT=COMPACT AUTO_INCREMENT=9 ;

--
-- Дамп данных таблицы `status`
--

INSERT INTO `status` (`id`, `name`, `type`) VALUES
(1, 'подборка', 1),
(2, 'отказ от участия', 1),
(3, 'подготовка заявки', 1),
(5, 'отказ от участия', 2),
(6, 'участие', NULL),
(7, 'отказ от участия', NULL),
(8, 'контракт', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `status_contract`
--

CREATE TABLE IF NOT EXISTS `status_contract` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=cp1251 ROW_FORMAT=COMPACT AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `status_contract`
--

INSERT INTO `status_contract` (`id`, `name`, `type`) VALUES
(1, 'Заключен', 1),
(2, 'Расторгнут', 1),
(3, 'Исполнен', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `status_prep`
--

CREATE TABLE IF NOT EXISTS `status_prep` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=cp1251 ROW_FORMAT=COMPACT AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `status_prep`
--

INSERT INTO `status_prep` (`id`, `name`, `type`) VALUES
(1, 'в работе', 1),
(2, 'не принята', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `status_uch`
--

CREATE TABLE IF NOT EXISTS `status_uch` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=cp1251 ROW_FORMAT=COMPACT AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `status_uch`
--

INSERT INTO `status_uch` (`id`, `name`, `type`) VALUES
(1, 'заявку отклонили', 1),
(2, 'участник победил', 1),
(3, 'участник проиграл', 1),
(4, 'участие', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `pass` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `sort` int(10) unsigned DEFAULT '1',
  `tel` varchar(255) DEFAULT NULL,
  `adress` varchar(255) DEFAULT NULL,
  `date` int(10) unsigned DEFAULT NULL,
  `pass_text` varchar(30) NOT NULL,
  `pabl` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=cp1251 ROW_FORMAT=DYNAMIC AUTO_INCREMENT=62 ;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `email`, `pass`, `name`, `sort`, `tel`, `adress`, `date`, `pass_text`, `pabl`) VALUES
(43, '2@2.ru', 'bcbe3365e6ac95ea2c0343a2395834dd', 'Ростов', 7, '', '', NULL, '222', 0),
(44, '1@1.ru', '698d51a19d8a121ce581499d7b701668', 'Специалист', 2, NULL, NULL, NULL, '111', 1),
(45, 'k@k.ru', 'c8837b23ff8aaa8a2dde915473ce0991', 'Краснодар', 1, NULL, NULL, NULL, '123321', 0),
(46, '3@3.ru', '310dcbbf4cce62f762a2aaa148d556bd', 'Кузнецов А.В.', 0, NULL, NULL, NULL, '333', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
