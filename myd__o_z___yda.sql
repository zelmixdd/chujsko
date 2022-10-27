-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 27 Paź 2022, 13:33
-- Wersja serwera: 10.4.24-MariaDB
-- Wersja PHP: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `mydło_z_żyda`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `menu`
--

CREATE TABLE `menu` (
  `id_f` int(11) NOT NULL,
  `Nazwa` varchar(255) NOT NULL,
  `Składniki` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `menu`
--

INSERT INTO `menu` (`id_f`, `Nazwa`, `Składniki`) VALUES
(1, 'Pizza Margherita', 'Ser, Sos Pomidorowy'),
(2, 'Pizza Capriciossa', 'Ser, Sos Pomidorowy, Szynka, Pieczarki'),
(3, 'Pizza Campione', 'Ser, Sos Pomidorowy, Szynka, Kabanos'),
(4, 'Pizza Peppe Roso', 'Ser, Sos Pomidorowy, Salami, Papryka'),
(5, 'Pizza Peperonii', 'Ser, Sos Pomidorowy, Peperonii'),
(6, 'Pizza Napoletana', 'Ser, Sos Pomidorowy, Salami, Czarne Oliwki'),
(7, 'Pizza Roma', 'Ser, Sos Pomidorowy, Salami, Kabanosy, Papryka'),
(8, 'Pizza Inverno', 'Ser, Sos Pomidorowy, Boczek Wędzony, Cebula Czerwona'),
(9, 'Pizza Mafioso', 'Ser, Sos Pomidorowy, Salami, Czosnek, Papryczki Jalapenos, Chilli Louisiana'),
(10, 'Pizza Sparare', 'Ser, Sos Pomidorowy, Boczek Wędzony, Pieczarki, Cebula Biała, Pomidory Koktajlowe, Czosnek'),
(11, 'Sałatka Awokado Kurczar', 'Awokado, Kurczak W Ziołach, Bekon, Pomidory Cherry, Mix Pestek, Pieczone Ziemniaki'),
(12, 'Sałatka Jesienny Kurczak', 'Burak Pieczony, Dynia Pieczona, Wędzony Ser Biały, Ser Pleśniowy, Kurczak Chilli, Soczewica Czarna, Winogrono, Żurawina'),
(13, 'Sałatka Cobb', 'Kurczak W Ziołach, Ser Pleśniowy, Bekon, Kukurydza, Pomidory Cherry, Sos Musztardo-Miodowy'),
(14, 'Sałatka Wege Jesień', 'Dynia Pieczona, Rukola, Burak, Pieczony Ziemniak, Pieczona Papryka, Mięta, Cebula Biała, Kapusta Czerwona, Sos Jogurtowy'),
(15, 'Sałatka Mozzarella', 'Ser Mozzarella, Ryż Biały, Sałata, Pomidor Cherry, Oliwa Z Oliwek, Ogórek, Kurczak Curry'),
(16, 'Yellow Tail', 'Australia Casella Family'),
(17, 'Casillero del Diablo', 'Chille, Concha y Toro'),
(18, 'Gallo', 'USA'),
(19, 'Gato Negro', 'Chille, San Pedro'),
(20, 'Kuflowe Mocne', 'Polska, Białystok Family');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `rozmiarówka`
--

CREATE TABLE `rozmiarówka` (
  `id_r` int(11) NOT NULL,
  `Rozmiar` varchar(255) NOT NULL,
  `Cena` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `rozmiarówka`
--

INSERT INTO `rozmiarówka` (`id_r`, `Rozmiar`, `Cena`) VALUES
(1, '30cm', '20,20zł'),
(2, '30cm', '21,37zł'),
(3, '30cm', '22,28zł'),
(4, '30cm', '23,27zł'),
(5, '30cm', '24,26zł'),
(6, '30cm', '25,25zł'),
(7, '30cm', '26,24zł'),
(8, '30cm', '27,23zł'),
(9, '30cm', '28,22zł'),
(10, '30cm', '29,21zł');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_f`);

--
-- Indeksy dla tabeli `rozmiarówka`
--
ALTER TABLE `rozmiarówka`
  ADD PRIMARY KEY (`id_r`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `menu`
--
ALTER TABLE `menu`
  MODIFY `id_f` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT dla tabeli `rozmiarówka`
--
ALTER TABLE `rozmiarówka`
  MODIFY `id_r` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
