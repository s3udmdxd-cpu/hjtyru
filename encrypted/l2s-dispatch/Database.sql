--
-- بنية الجدول `l2s_dispatch_bolo`
--

CREATE TABLE `l2s_dispatch_bolo` (
  `plate` varchar(50) NOT NULL,
  `date` timestamp NULL DEFAULT current_timestamp(),
  `vehicle` varchar(99) DEFAULT NULL,
  `reason` text NOT NULL,
  `officer` varchar(50) NOT NULL,
  `priority` varchar(15) NOT NULL DEFAULT 'Normal'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- بنية الجدول `l2s_dispatch_records`
--

CREATE TABLE `l2s_dispatch_records` (
  `citizenid` varchar(50) DEFAULT NULL,
  `officer` varchar(50) DEFAULT NULL,
  `hub` varchar(50) DEFAULT NULL,
  `videolink` longtext DEFAULT NULL,
  `street` text DEFAULT NULL,
  `date` varchar(70) DEFAULT NULL,
  `title` text NOT NULL DEFAULT 'Video Recording',
  `description` text DEFAULT NULL,
  `CamName` varchar(50) DEFAULT NULL,
  `priority` varchar(50) DEFAULT 'normal'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
