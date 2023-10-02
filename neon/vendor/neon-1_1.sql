-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 02, 2023 at 04:08 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `neon-1.1`
--

-- --------------------------------------------------------

--
-- Table structure for table `auther`
--

CREATE TABLE `auther` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `profile` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auther`
--

INSERT INTO `auther` (`id`, `name`, `profile`, `image`) VALUES
(2, 'John Doe', 'Author of Fiction Novels', 'john_doe.jpg'),
(3, 'Jane Smith', 'Author of Mystery Books', 'jane_smith.jpg'),
(4, 'Michael Johnson', 'Sci-Fi Writer', 'michael_johnson.jpg'),
(5, 'Emily Adams', 'Children\'s Book Author', 'emily_adams.jpg'),
(6, 'David Wilson', 'Historical Fiction Writer', 'david_wilson.jpg'),
(7, 'Sarah Thompson', 'Romance Novelist', 'sarah_thompson.jpg'),
(8, 'Robert Davis', 'Thriller Writer', 'robert_davis.jpg'),
(9, 'Jennifer Brown', 'Young Adult Author', 'jennifer_brown.jpg'),
(10, 'Daniel Lee', 'Fantasy Writer', 'daniel_lee.jpg'),
(11, 'Michelle Turner', 'Poet and Essayist', 'michelle_turner.jpg'),
(12, 'Alpha Thwin', 'mandalay', 'nissan-skyline-r34-4k-j6.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `auther_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `image` varchar(255) NOT NULL,
  `pdf_file` varchar(255) NOT NULL,
  `preview` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`id`, `name`, `auther_id`, `date`, `image`, `pdf_file`, `preview`) VALUES
(1, 'Book 1', 1, '2023-06-01', 'book1.jpg', 'ei_maung.pdf', 'Preview of Book 1'),
(2, 'Book 2', 2, '2023-06-02', 'book2.jpg', 'book2.pdf', 'Preview of Book 2'),
(3, 'Book 3', 3, '2023-06-03', 'book3.jpg', 'book3.pdf', 'Preview of Book 3'),
(4, 'Book 4', 4, '2023-06-04', 'book4.jpg', 'book4.pdf', 'Preview of Book 4'),
(5, 'Book 5', 5, '2023-06-05', 'book5.jpg', 'book5.pdf', 'Preview of Book 5'),
(6, 'Book 6', 6, '2023-06-06', 'book6.jpg', 'book6.pdf', 'Preview of Book 6'),
(7, 'Book 7', 7, '2023-06-07', 'book7.jpg', 'book7.pdf', 'Preview of Book 7'),
(8, 'Book 8', 8, '2023-06-08', 'book8.jpg', 'book8.pdf', 'Preview of Book 8'),
(9, 'Book 9', 2, '2023-06-09', 'book9.jpg', 'book9.pdf', 'Preview of Book 9'),
(10, 'Book 10', 1, '2023-06-10', 'book10.jpg', 'book10.pdf', 'Preview of Book 10');

-- --------------------------------------------------------

--
-- Table structure for table `book_category`
--

CREATE TABLE `book_category` (
  `id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book_category`
--

INSERT INTO `book_category` (`id`, `book_id`, `category_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 1),
(4, 4, 3),
(5, 5, 2),
(6, 6, 1),
(7, 7, 3),
(8, 8, 2),
(9, 9, 1),
(10, 10, 3);

-- --------------------------------------------------------

--
-- Table structure for table `book_comment`
--

CREATE TABLE `book_comment` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book_comment`
--

INSERT INTO `book_comment` (`id`, `user_id`, `book_id`, `comment`, `date`) VALUES
(1, 1, 1, 'Great book!', '2023-06-20 03:30:00'),
(2, 2, 1, 'I loved the characters.', '2023-06-20 05:00:00'),
(3, 3, 2, 'The plot was captivating.', '2023-06-20 06:15:00'),
(4, 1, 3, 'Highly recommended!', '2023-06-20 07:50:00'),
(5, 4, 2, 'The ending was surprising.', '2023-06-20 08:40:00'),
(6, 2, 3, 'Couldnt put it down!', '2023-06-20 10:00:00'),
(7, 3, 1, 'The book cover is beautiful.', '2023-06-20 11:15:00'),
(8, 4, 3, 'A must-read for fantasy fans.', '2023-06-20 12:25:00'),
(9, 1, 2, 'Looking forward to the sequel.', '2023-06-20 13:10:00'),
(10, 2, 2, 'The authors writing style is impressive.', '2023-06-20 13:45:00'),
(11, 3, 3, 'hi', '2023-06-30 06:02:11'),
(12, 3, 3, 'hello', '2023-06-30 06:09:34'),
(13, 3, 8, 'hi', '2023-06-30 11:12:24');

-- --------------------------------------------------------

--
-- Table structure for table `book_mark`
--

CREATE TABLE `book_mark` (
  `id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book_mark`
--

INSERT INTO `book_mark` (`id`, `book_id`, `user_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 2),
(4, 4, 2),
(5, 1, 3),
(6, 3, 3),
(7, 2, 4),
(8, 4, 4),
(9, 1, 5),
(10, 3, 5),
(11, 8, 3);

-- --------------------------------------------------------

--
-- Table structure for table `book_rating`
--

CREATE TABLE `book_rating` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book_rating`
--

INSERT INTO `book_rating` (`id`, `user_id`, `book_id`, `rating`) VALUES
(2, 1, 1, 4),
(3, 2, 1, 3),
(4, 3, 2, 5),
(5, 1, 3, 4),
(6, 4, 2, 4),
(7, 2, 3, 4),
(8, 3, 1, 5),
(9, 4, 3, 3),
(10, 1, 2, 4),
(11, 2, 2, 3),
(14, 3, 8, 2);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Fiction'),
(2, 'Mystery'),
(3, 'Sci-Fi'),
(4, 'Children\'s Books'),
(5, 'Historical Fiction'),
(6, 'Romance'),
(7, 'Thriller'),
(8, 'Young Adult'),
(9, 'Fantasy'),
(10, 'Poetry');

-- --------------------------------------------------------

--
-- Table structure for table `editor_choice`
--

CREATE TABLE `editor_choice` (
  `id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `editor_choice`
--

INSERT INTO `editor_choice` (`id`, `book_id`) VALUES
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

-- --------------------------------------------------------

--
-- Table structure for table `love_auther`
--

CREATE TABLE `love_auther` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `auther_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `love_auther`
--

INSERT INTO `love_auther` (`id`, `user_id`, `auther_id`) VALUES
(1, 1, 11),
(2, 2, 2),
(3, 1, 3),
(4, 2, 4),
(5, 1, 5),
(6, 2, 6),
(7, 1, 7),
(8, 2, 8),
(9, 1, 9),
(10, 2, 10);

-- --------------------------------------------------------

--
-- Table structure for table `review_book`
--

CREATE TABLE `review_book` (
  `id` int(11) NOT NULL,
  `user_review_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `review_book`
--

INSERT INTO `review_book` (`id`, `user_review_id`, `book_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 2),
(4, 4, 3),
(5, 1, 4),
(6, 5, 4),
(7, 6, 5),
(8, 7, 5),
(9, 8, 6),
(10, 9, 6),
(11, 12, 9),
(12, 12, 9);

-- --------------------------------------------------------

--
-- Table structure for table `review_comment`
--

CREATE TABLE `review_comment` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `review_book_id` int(11) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `review_comment`
--

INSERT INTO `review_comment` (`id`, `user_id`, `review_book_id`, `comment`, `date`) VALUES
(1, 1, 1, 'Great book!', '2023-06-20 01:55:00'),
(2, 2, 2, 'Amazing read!', '2023-06-20 01:56:00'),
(3, 1, 3, 'Highly recommended!', '2023-06-20 01:57:00'),
(4, 2, 4, 'Loved the storyline.', '2023-06-20 01:58:00'),
(5, 1, 5, 'Couldnt put it down!', '2023-06-20 01:59:00'),
(6, 2, 6, 'Incredible characters.', '2023-06-20 02:00:00'),
(7, 1, 7, 'Well-written and engaging.', '2023-06-20 02:01:00'),
(8, 2, 8, 'Must-read for book lovers!', '2023-06-20 02:02:00'),
(9, 1, 9, 'Captivating till the end.', '2023-06-20 02:03:00'),
(10, 2, 10, 'A literary masterpiece.', '2023-06-20 02:04:00'),
(11, 3, 12, 'hi', '2023-06-29 08:57:47'),
(12, 3, 12, 'bla', '2023-06-29 09:28:41'),
(13, 3, 12, 'hi', '2023-06-29 09:28:51'),
(14, 3, 12, 'bla', '2023-06-29 09:29:11'),
(15, 3, 12, 'comment', '2023-06-29 09:29:55'),
(16, 3, 12, 'hi', '2023-06-30 05:59:08'),
(17, 3, 12, 'fff', '2023-06-30 06:14:07'),
(18, 3, 10, 'hi', '2023-06-30 06:15:33'),
(19, 3, 10, 'hll', '2023-06-30 06:16:13');

-- --------------------------------------------------------

--
-- Table structure for table `review_react`
--

CREATE TABLE `review_react` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `review_book_id` int(11) NOT NULL,
  `love` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `review_react`
--

INSERT INTO `review_react` (`id`, `user_id`, `review_book_id`, `love`) VALUES
(1, 1, 1, 1),
(2, 2, 2, 1),
(3, 1, 3, 1),
(4, 2, 4, 1),
(5, 1, 5, 1),
(6, 2, 6, 1),
(7, 1, 7, 1),
(8, 2, 8, 1),
(9, 1, 9, 1),
(10, 2, 10, 1),
(11, 3, 12, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `bio` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `image`, `bio`) VALUES
(1, 'John Doe', 'john@example.com', 'password123', 'john_profile.jpg', 'I am John Doe.'),
(2, 'Jane Smith', 'jane@example.com', 'password456', 'jane_profile.jpg', 'Hello, I am Jane Smith.'),
(3, 'Alex Wilson', 'alex@example.com', 'password789', 'alex_profile.jpg', 'Bio for Alex Wilson.'),
(4, 'Sarah Jones', 'sarah@example.com', 'passwordabc', 'sarah_profile.jpg', 'About Sarah Jones.'),
(5, 'Michael Brown', 'michael@example.com', 'passworddef', 'michael_profile.jpg', 'Bio information for Michael Brown.'),
(6, 'Emily Davis', 'emily@example.com', 'passwordghi', 'emily_profile.jpg', 'Bio for Emily Davis.'),
(7, 'Daniel Johnson', 'daniel@example.com', 'passwordjkl', 'daniel_profile.jpg', 'About Daniel Johnson.'),
(8, 'Olivia Thomas', 'olivia@example.com', 'passwordmno', 'olivia_profile.jpg', 'Bio information for Olivia Thomas.'),
(9, 'William Anderson', 'william@example.com', 'passwordpqr', 'william_profile.jpg', 'About William Anderson.'),
(10, 'Sophia Martinez', 'sophia@example.com', 'passwordstu', 'sophia_profile.jpg', 'Bio for Sophia Martinez.');

-- --------------------------------------------------------

--
-- Table structure for table `user_review`
--

CREATE TABLE `user_review` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `content` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_review`
--

INSERT INTO `user_review` (`id`, `user_id`, `content`, `date`) VALUES
(1, 1, 'Great book!', '2023-06-01 04:00:00'),
(2, 2, 'Highly recommended!', '2023-06-02 03:15:00'),
(3, 3, 'Enjoyed reading it.', '2023-06-03 07:50:00'),
(4, 4, 'Interesting plot.', '2023-06-04 09:40:00'),
(5, 1, 'Couldnt put it down!', '2023-06-05 04:35:00'),
(6, 5, 'A must-read!', '2023-06-06 07:20:00'),
(7, 6, 'Well-written and engaging.', '2023-06-07 08:45:00'),
(8, 7, 'Loved the characters.', '2023-06-08 06:10:00'),
(9, 8, 'Impressive storytelling.', '2023-06-09 10:55:00'),
(10, 9, 'Couldnt wait to see how it ends!', '2023-06-10 04:25:00'),
(12, 3, '             hafjd       ', '2023-06-29 08:09:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auther`
--
ALTER TABLE `auther`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auther_id` (`auther_id`);

--
-- Indexes for table `book_category`
--
ALTER TABLE `book_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `book_id` (`book_id`);

--
-- Indexes for table `book_comment`
--
ALTER TABLE `book_comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_id` (`book_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `book_mark`
--
ALTER TABLE `book_mark`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_id` (`book_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `book_rating`
--
ALTER TABLE `book_rating`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `book_id` (`book_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `editor_choice`
--
ALTER TABLE `editor_choice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_id` (`book_id`);

--
-- Indexes for table `love_auther`
--
ALTER TABLE `love_auther`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `auther_id` (`auther_id`);

--
-- Indexes for table `review_book`
--
ALTER TABLE `review_book`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_review_id` (`user_review_id`),
  ADD KEY `book_id` (`book_id`);

--
-- Indexes for table `review_comment`
--
ALTER TABLE `review_comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `review_book_id` (`review_book_id`);

--
-- Indexes for table `review_react`
--
ALTER TABLE `review_react`
  ADD PRIMARY KEY (`id`),
  ADD KEY `review_book_id` (`review_book_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_review`
--
ALTER TABLE `user_review`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auther`
--
ALTER TABLE `auther`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `book_category`
--
ALTER TABLE `book_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `book_comment`
--
ALTER TABLE `book_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `book_mark`
--
ALTER TABLE `book_mark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `book_rating`
--
ALTER TABLE `book_rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `editor_choice`
--
ALTER TABLE `editor_choice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `love_auther`
--
ALTER TABLE `love_auther`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `review_book`
--
ALTER TABLE `review_book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `review_comment`
--
ALTER TABLE `review_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `review_react`
--
ALTER TABLE `review_react`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user_review`
--
ALTER TABLE `user_review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `book_category`
--
ALTER TABLE `book_category`
  ADD CONSTRAINT `book_category_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  ADD CONSTRAINT `book_category_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `book` (`id`);

--
-- Constraints for table `book_comment`
--
ALTER TABLE `book_comment`
  ADD CONSTRAINT `book_comment_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `book` (`id`),
  ADD CONSTRAINT `book_comment_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `editor_choice`
--
ALTER TABLE `editor_choice`
  ADD CONSTRAINT `editor_choice_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `book` (`id`);

--
-- Constraints for table `love_auther`
--
ALTER TABLE `love_auther`
  ADD CONSTRAINT `love_auther_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `love_auther_ibfk_2` FOREIGN KEY (`auther_id`) REFERENCES `auther` (`id`);

--
-- Constraints for table `review_react`
--
ALTER TABLE `review_react`
  ADD CONSTRAINT `review_react_ibfk_1` FOREIGN KEY (`review_book_id`) REFERENCES `review_book` (`id`),
  ADD CONSTRAINT `review_react_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
