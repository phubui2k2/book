
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


--
-- Database: `btl`

-- --------------------------------------------------------
-- Table structure for table `bills`

CREATE TABLE `bills` (
  `id` int NOT NULL,
  `order_id` int NOT NULL,
  `product_id` int NOT NULL,
  `quantity` int NOT NULL,
  `price` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------
-- Table structure for table `customers`

CREATE TABLE `customers` (
  `id` int NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `image` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `gender` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------
-- Table structure for table `employees`

CREATE TABLE `employees` (
  `id` int NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `cmnd` varchar(12) COLLATE utf8mb4_general_ci NOT NULL,
  `gender` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `birthday` date DEFAULT NULL,
  `image` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `is_admin` int NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- insert data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `cmnd`, `gender`, `phone`, `birthday`, `image`, `email`, `password`, `is_admin`, `address`) VALUES
(1, 'Nguyễn Văn A', '123445675678', 'Nam', '0901234567', '1990-01-01', 'img1.jpg', 'a@gmail.com', '123456', 0, 'phường Linh Trung, thành phố Thủ Đức, TP. Hồ Chí Minh'),
(2, 'Trần Thị B', '123445675679', 'Nữ', '0901234568', '1991-02-02', 'img2.jpg', 'b@gmail.com', '123456', 0, 'phường 1, quận 1, TP. Hồ Chí Minh'),
(3, 'Nguyễn Thị C', '123445675680', 'Nữ', '0901234569', '1992-03-03', 'img3.jpg', 'c@gmail.com', '123456', 0, 'phường An Phú, quận 2, TP. Hồ Chí Minh'),
(4, 'Phan Thị D', '123445675681', 'Nữ', '0901234570', '1993-04-04', 'img4.jpg', 'd@gmail.com', '123456', 0, 'phường Thảo Điền, quận 2, TP. Hồ Chí Minh'),
(5, 'Vũ Thị E', '123445675682', 'Nữ', '0901234571', '1994-05-05', 'img5.jpg', 'e@gmail.com', '123456', 0, 'phường Tân Phú, quận 7, TP. Hồ Chí Minh'),
(6, 'Nguyễn Thị F', '123445675683', 'Nữ', '0901234572', '1995-06-06', 'img6.jpg', 'f@gmail.com', '123456', 0, 'phường Thủ Thiêm, quận 2, TP. Hồ Chí Minh'),
(7, 'Lê Thị G', '123445675684', 'Nữ', '0901234573', '1996-07-07', 'img7.jpg', 'g@gmail.com', '123456', 0, 'phường Hiệp Phú, quận 9, TP. Hồ Chí Minh'),
(8, 'Trần Thị H', '123445675685', 'Nữ', '0901234574', '1997-08-08', 'img8.jpg', 'h@gmail.com', '123456', 0, 'phường Phú Mỹ Hưng, quận 7, TP. Hồ Chí Minh'),
(9, 'Đỗ Thị I', '123445675686', 'Nữ', '0901234575', '1998-09-09', 'img9.jpg', 'i@gmail.com', '123456', 0, 'phường Tân Bình, quận Tân Phú, TP. Hồ Chí Minh'),
(10, 'Nguyễn Văn J', '123445675688', 'Nam', '0901234576', '1999-10-10', 'img10.jpg', 'j@gmail.com', '123456', 0, 'phường Cầu Kho, quận 1, TP. Hồ Chí Minh'),
(11, 'Lê Thị K', '123445675689', 'Nữ', '0901234577', '2000-11-11', 'img11.jpg', 'k@gmail.com', '123456', 0, 'phường Thảo Điền, quận 2, TP. Hồ Chí Minh'),
(12, 'Vũ Thị L', '123445675690', 'Nữ', '0901234578', '2001-12-12', 'img12.jpg', 'l@gmail.com', '123456', 0, 'phường Bến Thành, quận 1, TP. Hồ Chí Minh'),
(13, 'Trần Văn M', '123445675691', 'Nam', '0901234579', '2002-01-01', 'img13.jpg', 'm@gmail.com', '123456', 0, 'phường Thảo Điền, quận 2, TP. Hồ Chí Minh'),
(14, 'Lê Văn N', '123445675692', 'Nam', '0901234580', '2003-02-02', 'img14.jpg', 'n@gmail.com', '123456', 0, 'phường Tân Bình, quận Tân Phú, TP. Hồ Chí Minh'),
(15, 'Trần Thị O', '123445675693', 'Nữ', '0901234581', '2004-03-03', 'img15.jpg', 'o@gmail.com', '123456', 0, 'phường 7, quận 3, TP. Hồ Chí Minh'),
(16, 'Nguyễn Văn P', '123445675694', 'Nam', '0901234582', '2005-04-04', 'img16.jpg', 'p@gmail.com', '123456', 0, 'phường Phú Mỹ, quận 7, TP. Hồ Chí Minh'),
(17, 'Phạm Thị Q', '123445675695', 'Nữ', '0901234583', '2006-05-05', 'img17.jpg', 'q@gmail.com', '123456', 0, 'phường Hòa Xuân, quận Cẩm Lệ, thành phố Đà Nẵng'),
(18, 'Vũ Văn R', '123445675696', 'Nam', '0901234584', '2007-06-06', 'img18.jpg', 'r@gmail.com', '123456', 0, 'phường Cẩm Nam, thành phố Hội An, tỉnh Quảng Nam');

-- --------------------------------------------------------
-- Table structure for table `feedback`

CREATE TABLE `feedback` (
  `id` int NOT NULL,
  `product_id` int NOT NULL,
  `customer_id` int NOT NULL,
  `stars` int DEFAULT NULL,
  `comment` text COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------
-- Table structure for table `orders`

CREATE TABLE `orders` (
  `id` int NOT NULL,
  `employee_id` int NOT NULL,
  `customer_id` int NOT NULL,
  `price` int NOT NULL,
  `order_date` date NOT NULL,
  `status` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------
-- Table structure for table `products`

CREATE TABLE `products` (
  `id` int NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `description` text COLLATE utf8mb4_general_ci NOT NULL,
  `image` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `price` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------
-- Table structure for table `tables`

CREATE TABLE `tables` (
  `id` int NOT NULL,
  `order_id` int NOT NULL,
  `customer_id` int NOT NULL,
  `satus` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Indexes for dumped tables

--
-- Indexes for table `bills`
ALTER TABLE `bills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bills_ibfk_1` (`order_id`),
  ADD KEY `bills_ibfk_2` (`product_id`);

--
-- Indexes for table `customers`
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_ibfk_1` (`customer_id`),
  ADD KEY `comments_ibfk_2` (`product_id`);

--
-- Indexes for table `orders`
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cus_id` (`customer_id`),
  ADD KEY `empl_id` (`employee_id`);

--
-- Indexes for table `products`
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tables`
ALTER TABLE `tables`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tables_ibfk_1` (`customer_id`),
  ADD KEY `tables_ibfk_2` (`order_id`);

--
-- AUTO_INCREMENT for dumped tables

--
-- AUTO_INCREMENT for table `bills`
ALTER TABLE `bills`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customers`
ALTER TABLE `customers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employees`
ALTER TABLE `employees`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `feedback`
ALTER TABLE `feedback`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
ALTER TABLE `orders`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
ALTER TABLE `products`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tables`
ALTER TABLE `tables`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- Constraints
--
-- Constraints for table `bills`
ALTER TABLE `bills`
  ADD CONSTRAINT `bills_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `employees` (`id`),
  ADD CONSTRAINT `bills_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `feedback`
ALTER TABLE `feedback`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`),
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `orders`
ALTER TABLE `orders`
  ADD CONSTRAINT `cus_id` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`),
  ADD CONSTRAINT `empl_id` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`);

--
-- Constraints for table `tables`
ALTER TABLE `tables`
  ADD CONSTRAINT `tables_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`),
  ADD CONSTRAINT `tables_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);
COMMIT;
