-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 27 Paź 2022, 22:39
-- Wersja serwera: 10.4.25-MariaDB
-- Wersja PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `zyd_z_mydla`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `menu`
--

CREATE TABLE `menu` (
  `id_f` int(11) NOT NULL,
  `Nazwa` varchar(255) NOT NULL,
  `Składniki` varchar(255) NOT NULL,
  `Cena` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `menu`
--

INSERT INTO `menu` (`id_f`, `Nazwa`, `Składniki`, `Cena`) VALUES
(1, 'Pizza Margherita', 'Ser, Sos Pomidorowy', '20,20'),
(2, 'Pizza Capriciossa', 'Ser, Sos Pomidorowy, Szynka, Pieczarki', '22.04'),
(3, 'Pizza Campione', 'Ser, Sos Pomidorowy, Szynka, Kabanos', '25,64'),
(4, 'Pizza Peppe Roso', 'Ser, Sos Pomidorowy, Salami, Papryka', '25,58'),
(5, 'Pizza Peperonii', 'Ser, Sos Pomidorowy, Peperonii', '27,68'),
(6, 'Pizza Napoletana', 'Ser, Sos Pomidorowy, Salami, Czarne Oliwki', '29,92'),
(7, 'Pizza Roma', 'Ser, Sos Pomidorowy, Salami, Kabanosy, Papryka', '27,48'),
(8, 'Pizza Inverno', 'Ser, Sos Pomidorowy, Boczek Wędzony, Cebula Czerwona', '30,03'),
(9, 'Pizza Mafioso', 'Ser, Sos Pomidorowy, Salami, Czosnek, Papryczki Jalapenos, Chilli Louisiana', '24,94'),
(10, 'Pizza Sparare', 'Ser, Sos Pomidorowy, Boczek Wędzony, Pieczarki, Cebula Biała, Pomidory Koktajlowe, Czosnek', '31,12'),
(11, 'Sałatka Awokado Kurczar', 'Awokado, Kurczak W Ziołach, Bekon, Pomidory Cherry, Mix Pestek, Pieczone Ziemniaki', '15,65'),
(12, 'Sałatka Jesienny Kurczak', 'Burak Pieczony, Dynia Pieczona, Wędzony Ser Biały, Ser Pleśniowy, Kurczak Chilli, Soczewica Czarna, Winogrono, Żurawina', '15,61'),
(13, 'Sałatka Cobb', 'Kurczak W Ziołach, Ser Pleśniowy, Bekon, Kukurydza, Pomidory Cherry, Sos Musztardo-Miodowy', '15,62'),
(14, 'Sałatka Wege Jesień', 'Dynia Pieczona, Rukola, Burak, Pieczony Ziemniak, Pieczona Papryka, Mięta, Cebula Biała, Kapusta Czerwona, Sos Jogurtowy', '15,63'),
(15, 'Sałatka Mozzarella', 'Ser Mozzarella, Ryż Biały, Sałata, Pomidor Cherry, Oliwa Z Oliwek, Ogórek, Kurczak Curry', '15,66'),
(16, 'Yellow Tail', 'Australia Casella Family', '28,45'),
(17, 'Casillero del Diablo', 'Chille, Concha y Toro', '38,45'),
(18, 'Gallo', 'USA', '18,45'),
(19, 'Gato Negro', 'Chille, San Pedro', '23,45'),
(20, 'Kuflowe Mocne', 'Polska, Białystok Family', '18,67');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `orderedfood`
--

CREATE TABLE `orderedfood` (
  `id` int(11) NOT NULL,
  `orderid` int(11) NOT NULL,
  `foodid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zamowienie`
--

CREATE TABLE `zamowienie` (
  `id` int(11) NOT NULL,
  `FirstName` text NOT NULL,
  `LastName` text NOT NULL,
  `Address` text NOT NULL,
  `Phone` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_f`);

--
-- Indeksy dla tabeli `orderedfood`
--
ALTER TABLE `orderedfood`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orderid` (`orderid`),
  ADD KEY `foodid` (`foodid`);

--
-- Indeksy dla tabeli `zamowienie`
--
ALTER TABLE `zamowienie`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `menu`
--
ALTER TABLE `menu`
  MODIFY `id_f` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT dla tabeli `orderedfood`
--
ALTER TABLE `orderedfood`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `zamowienie`
--
ALTER TABLE `zamowienie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `orderedfood`
--
ALTER TABLE `orderedfood`
  ADD CONSTRAINT `orderedfood_ibfk_1` FOREIGN KEY (`foodid`) REFERENCES `menu` (`id_f`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orderedfood_ibfk_2` FOREIGN KEY (`orderid`) REFERENCES `zamowienie` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
