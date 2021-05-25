-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Май 26 2021 г., 01:04
-- Версия сервера: 10.4.19-MariaDB
-- Версия PHP: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `audit`
--

-- --------------------------------------------------------

--
-- Структура таблицы `about`
--

CREATE TABLE `about` (
  `about_id` int(11) NOT NULL,
  `about_photo` varchar(255) NOT NULL,
  `about_alt` varchar(255) NOT NULL,
  `about_title` varchar(255) NOT NULL,
  `about_description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `about`
--

INSERT INTO `about` (`about_id`, `about_photo`, `about_alt`, `about_title`, `about_description`) VALUES
(1, 'confidential.png', 'confidential', 'Конфіденційність інформації', 'Ми гарантуємо нерозголошення інформації третім особам (прописуємо в договорі)'),
(2, 'accounting.png', 'accounting', 'Перевірки у всіх видах діяльності', 'До нас може звернутися будь-яка компанія, яка здійснює продаж або надає послуги'),
(3, 'result.png', 'result', 'Працюємо на результат', 'Оперативно надаємо необхідні дані, даємо докладні рекомендації, як збільшити ефективність роботи персоналу'),
(4, 'transparency.png', 'transparency', 'Прозорість і деталізація вартості перевірки', 'Розрахунок вартості відбувається заздалегідь, ви завжди знаєте, за що платите. Детально надаємо інформацію щодо умов, методів і типів перевірки'),
(5, 'professional.png', 'professional', 'Професіоналізм співробітників', 'Наша команда складається з сертифікованих фахівців, кваліфікація яких підтверджена сертифікатами ISO');

-- --------------------------------------------------------

--
-- Структура таблицы `clients_request`
--

CREATE TABLE `clients_request` (
  `request_id` int(25) NOT NULL,
  `client_name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `client_phone` varchar(20) NOT NULL,
  `id_services` int(25) NOT NULL,
  `request_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `clients_request`
--

INSERT INTO `clients_request` (`request_id`, `client_name`, `client_phone`, `id_services`, `request_date`) VALUES
(3, 'Елена', '636111985', 5, '2021-05-19 00:21:23'),
(4, 'Елена', '636111985', 2, '2021-05-19 08:48:06'),
(5, 'Елена', '2147483647', 6, '2021-05-20 21:35:06'),
(6, 'Вікторія', '2147483647', 4, '2021-05-20 21:38:32'),
(9, 'Сергій', '2147483647', 2, '2021-05-20 21:46:33'),
(10, 'Елена', '2147483647', 1, '2021-05-20 21:58:31'),
(18, 'Вікторія', '555555555', 3, '2021-05-20 22:29:21'),
(19, 'Елена', '2147483647', 5, '2021-05-21 20:16:05'),
(20, 'Елена', '2147483647', 1, '2021-05-23 23:55:52'),
(22, 'Вікторія', '2147483647', 4, '2021-05-23 23:58:30'),
(23, 'Сергій', '2147483647', 6, '2021-05-24 00:00:46'),
(24, 'Вікторія', '380636111985', 2, '2021-05-24 00:03:29'),
(25, 'Сергій', '380636111985', 1, '2021-05-24 00:10:41'),
(26, 'Елена', '380636111985', 5, '2021-05-24 00:11:19'),
(27, 'Вікторія', '0636111985', 2, '2021-05-24 00:16:00'),
(28, 'Елена', '0636111985', 4, '2021-05-24 00:18:46'),
(29, 'Вікторія', '380636111985', 5, '2021-05-26 01:15:01');

-- --------------------------------------------------------

--
-- Структура таблицы `services`
--

CREATE TABLE `services` (
  `services_id` int(11) NOT NULL,
  `services_name` varchar(255) NOT NULL,
  `services_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `services`
--

INSERT INTO `services` (`services_id`, `services_name`, `services_description`) VALUES
(1, 'Аудиторські послуги', 'Відділ може виконати перевірку результатів фінансової і виробничої діяльності, допомогти  підвищити якість зовнішньої фінансової звітності, зміцнити процедури корпоративного управління'),
(2, 'Консалтинг', 'Cформована команда експертів, які володіють практичним досвідом у наданні консультацій з реалізації стратегій, операційного управління та виробництва'),
(3, 'Послуги з оподаткування', 'Фахівці надають актуальну і точну інформацію про законодавство, що дозволяє компаніям використовувати в управлінні гнучкий і підхід і застережливий принцип'),
(4, 'Юридичні послуги', 'Команда юристів і адвокатів, що спеціалізується на питаннях національного і міжнародного законодавств'),
(5, 'Супровід угод', 'Ми надамо Вам допомогу на всіх етапах угоди - від пошуку потенційних компаній для купівлі-продажу до етапу інтеграції'),
(6, 'Форензік ', 'Група Форензік надає фінансові і економічні послуги компаніям та їх юристам, які беруть участь в судових розглядах, і в корпоративних розслідуваннях');

-- --------------------------------------------------------

--
-- Структура таблицы `workers`
--

CREATE TABLE `workers` (
  `workers_id` int(15) NOT NULL,
  `workers_photo` varchar(255) NOT NULL,
  `workers_alt` varchar(255) NOT NULL,
  `workers_firstname` varchar(255) NOT NULL,
  `workers_lastname` varchar(255) NOT NULL,
  `workers_position` varchar(255) NOT NULL,
  `workers_description` text NOT NULL,
  `id_services` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `workers`
--

INSERT INTO `workers` (`workers_id`, `workers_photo`, `workers_alt`, `workers_firstname`, `workers_lastname`, `workers_position`, `workers_description`, `id_services`) VALUES
(1, 'РоманДубняк.jpg', 'РоманДубняк', 'Роман', 'Дубняк', 'Team Leade', 'Експерт з обробки фінансової звітності банківських, страхових та інших фінансових установ. Досвід роботи: 13 років', 3),
(2, 'АнатолійАртемук.jpg', 'АнатолійАртемук', 'Анатолій', 'Артемук', 'Senior Assurance', 'Фахівець з обробки фінансової звітності сільськогосподарських підприємств. Досвід роботи: 10 років', 4),
(3, 'ВалеріяКравчук.jpg', 'ВалеріяКравчук', 'Валерія', 'Кравчук', 'Assurance', 'Юрист, основний напрям — фінансове право. Досвід роботи: 6 років', 1),
(4, 'ВікторіяКравчук.jpg', 'ВікторіяКравчук', 'Вікторія', 'Кравчук', 'Assurance', 'Адвокат, основний напрям — фінансове право. Досвід роботи: 6 років', 5),
(5, 'ВадимНікітін.jpg', 'ВадимНікітін', 'Вадим', 'Нікітін', 'Junior Assurance', 'Спеціаліст з обробки первинної документації. Досвід: роботи 2 роки.', 6),
(6, 'МаксимКуць.jpg', 'МаксимКуць', 'Максим', 'Куць', 'Junior Assurance', 'Спеціаліст з формування і коригування договорів. Досвід: роботи 1,5 років.', 2),
(7, 'АннаКривенюк.jpg', 'АннаКривенюк', 'Анна', 'Кривенюк', 'Team Lead', 'Експерт у аналізі світових ринків збуту продукції. Досвід роботи: 10', 3),
(8, 'НазарСмірнов.jpg', 'НазарСмірнов', 'Назар', 'Смірнов', 'Senior Assurance', 'Фахівець з Європейського права. Досвід роботи: 9 років.', 1),
(9, 'ДмитроВойтанович.jpg', 'ДмитроВойтанович', 'Дмитро', 'Войтанович', 'Senior Assurance', 'Фахівець з обліку і оподаткування країн Центральної та Східної Європи. Досвід роботи: 7 років.', 4),
(10, 'НазарЧолій.jpg', 'НазарЧолій', 'Назар', 'Чолій', 'Senior Assurance', 'Фахівець з аналізу платоспроможності підприємств. Досвід роботи: 7 років ', 6),
(11, 'ВладиславКостюк.jpg', 'ВладиславКостюк', 'Владислав', 'Костюк', 'Junior Assurance', 'Спеціаліст з обробки первинної документації. Досвід: роботи 1 рік.', 5),
(12, 'КатеринаМакарук.jpg', 'КатеринаМакарук', 'Катерина', 'Макарук', 'HR', 'Спеціаліст з організації управління на підприємстві. Досвід роботи: 5 років', 2),
(13, 'КатеринаСава.jpg', 'КатеринаСава', 'Катерина', 'Сава', 'HR', 'Спеціаліст з організації управління на підприємстві. Досвід роботи: 5 років', 1);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`about_id`),
  ADD UNIQUE KEY `about_id` (`about_id`);

--
-- Индексы таблицы `clients_request`
--
ALTER TABLE `clients_request`
  ADD PRIMARY KEY (`request_id`),
  ADD UNIQUE KEY `request_id` (`request_id`),
  ADD KEY `id_services` (`id_services`);

--
-- Индексы таблицы `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`services_id`),
  ADD UNIQUE KEY `services_id` (`services_id`);

--
-- Индексы таблицы `workers`
--
ALTER TABLE `workers`
  ADD PRIMARY KEY (`workers_id`),
  ADD UNIQUE KEY `workers_id` (`workers_id`),
  ADD KEY `id_services` (`id_services`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `about`
--
ALTER TABLE `about`
  MODIFY `about_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `clients_request`
--
ALTER TABLE `clients_request`
  MODIFY `request_id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT для таблицы `services`
--
ALTER TABLE `services`
  MODIFY `services_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `workers`
--
ALTER TABLE `workers`
  MODIFY `workers_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `clients_request`
--
ALTER TABLE `clients_request`
  ADD CONSTRAINT `clients_request_ibfk_1` FOREIGN KEY (`id_services`) REFERENCES `services` (`services_id`);

--
-- Ограничения внешнего ключа таблицы `workers`
--
ALTER TABLE `workers`
  ADD CONSTRAINT `workers_ibfk_1` FOREIGN KEY (`id_services`) REFERENCES `services` (`services_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
