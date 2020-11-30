-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2020 at 04:40 PM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotelmanagementsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb1_hotels`
--

CREATE TABLE `tb1_hotels` (
  `address` varchar(62) NOT NULL,
  `direct_payment` varchar(4) DEFAULT NULL,
  `roomspayment_termsprepayment_description` varchar(100) NOT NULL,
  `roomspayment_termsname` varchar(38) NOT NULL,
  `roomspayment_termscancellation_description` varchar(234) NOT NULL,
  `roomsroom_type_id` int(11) NOT NULL,
  `roomsdeal_taggingdiscount_percentage` int(11) DEFAULT NULL,
  `roomsdeal_taggingpublic_price` int(11) DEFAULT NULL,
  `roomsdeal_taggingdeal_name` varchar(14) DEFAULT NULL,
  `roomsprice` decimal(6,2) NOT NULL,
  `roomsblock_id` varchar(25) NOT NULL,
  `roomsrefundable_until` varchar(25) DEFAULT NULL,
  `roomsrefundable` varchar(5) NOT NULL,
  `roomsdeposit_required` varchar(5) NOT NULL,
  `roomsroom_name` varchar(50) NOT NULL,
  `roomsadults` int(11) NOT NULL,
  `roomsnum_rooms_available_at_this_price` int(11) NOT NULL,
  `roomsroom_id` int(11) NOT NULL,
  `hotel_currency_code` varchar(3) NOT NULL,
  `hotel_id` int(11) NOT NULL,
  `country` varchar(2) NOT NULL,
  `default_language` varchar(2) NOT NULL,
  `stars` decimal(3,1) DEFAULT NULL,
  `hotel_name` varchar(33) NOT NULL,
  `photo` varchar(206) NOT NULL,
  `price` decimal(6,2) NOT NULL,
  `postcode` int(11) NOT NULL,
  `checkin_timeuntil` varchar(5) DEFAULT NULL,
  `checkin_timefrom` varchar(5) NOT NULL,
  `hotel_amenities0` varchar(12) NOT NULL,
  `hotel_amenities1` varchar(20) NOT NULL,
  `hotel_amenities2` varchar(23) NOT NULL,
  `hotel_amenities3` varchar(23) NOT NULL,
  `hotel_amenities4` varchar(41) NOT NULL,
  `hotel_amenities5` varchar(23) NOT NULL,
  `hotel_amenities6` varchar(34) NOT NULL,
  `hotel_amenities7` varchar(34) NOT NULL,
  `hotel_amenities8` varchar(41) NOT NULL,
  `hotel_amenities9` varchar(41) NOT NULL,
  `hotel_amenities10` varchar(41) NOT NULL,
  `hotel_amenities11` varchar(41) DEFAULT NULL,
  `hotel_amenities12` varchar(33) DEFAULT NULL,
  `hotel_amenities13` varchar(34) DEFAULT NULL,
  `hotel_amenities14` varchar(41) DEFAULT NULL,
  `hotel_amenities15` varchar(34) DEFAULT NULL,
  `hotel_amenities16` varchar(41) DEFAULT NULL,
  `hotel_amenities17` varchar(41) DEFAULT NULL,
  `hotel_amenities18` varchar(34) DEFAULT NULL,
  `hotel_amenities19` varchar(41) DEFAULT NULL,
  `hotel_amenities20` varchar(41) DEFAULT NULL,
  `hotel_amenities21` varchar(30) DEFAULT NULL,
  `hotel_amenities22` varchar(30) DEFAULT NULL,
  `hotel_amenities23` varchar(33) DEFAULT NULL,
  `hotel_amenities24` varchar(29) DEFAULT NULL,
  `hotel_amenities25` varchar(29) DEFAULT NULL,
  `hotel_amenities26` varchar(25) DEFAULT NULL,
  `hotel_amenities27` varchar(34) DEFAULT NULL,
  `hotel_amenities28` varchar(34) DEFAULT NULL,
  `hotel_amenities29` varchar(33) DEFAULT NULL,
  `hotel_amenities30` varchar(29) DEFAULT NULL,
  `hotel_amenities31` varchar(27) DEFAULT NULL,
  `hotel_amenities32` varchar(33) DEFAULT NULL,
  `hotel_amenities33` varchar(33) DEFAULT NULL,
  `hotel_amenities34` varchar(29) DEFAULT NULL,
  `hotel_amenities35` varchar(29) DEFAULT NULL,
  `hotel_amenities36` varchar(25) DEFAULT NULL,
  `hotel_amenities37` varchar(34) DEFAULT NULL,
  `hotel_amenities38` varchar(22) DEFAULT NULL,
  `hotel_amenities39` varchar(23) DEFAULT NULL,
  `hotel_amenities40` varchar(21) DEFAULT NULL,
  `hotel_amenities41` varchar(24) DEFAULT NULL,
  `hotel_amenities42` varchar(17) DEFAULT NULL,
  `rooms0deal_tagging` varchar(30) DEFAULT NULL,
  `hotel_amenities43` varchar(10) DEFAULT NULL,
  `hotel_amenities44` varchar(20) DEFAULT NULL,
  `hotel_amenities45` varchar(17) DEFAULT NULL,
  `hotel_amenities46` varchar(21) DEFAULT NULL,
  `hotel_amenities47` varchar(34) DEFAULT NULL,
  `hotel_amenities48` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb1_hotels`
--

INSERT INTO `tb1_hotels` (`address`, `direct_payment`, `roomspayment_termsprepayment_description`, `roomspayment_termsname`, `roomspayment_termscancellation_description`, `roomsroom_type_id`, `roomsdeal_taggingdiscount_percentage`, `roomsdeal_taggingpublic_price`, `roomsdeal_taggingdeal_name`, `roomsprice`, `roomsblock_id`, `roomsrefundable_until`, `roomsrefundable`, `roomsdeposit_required`, `roomsroom_name`, `roomsadults`, `roomsnum_rooms_available_at_this_price`, `roomsroom_id`, `hotel_currency_code`, `hotel_id`, `country`, `default_language`, `stars`, `hotel_name`, `photo`, `price`, `postcode`, `checkin_timeuntil`, `checkin_timefrom`, `hotel_amenities0`, `hotel_amenities1`, `hotel_amenities2`, `hotel_amenities3`, `hotel_amenities4`, `hotel_amenities5`, `hotel_amenities6`, `hotel_amenities7`, `hotel_amenities8`, `hotel_amenities9`, `hotel_amenities10`, `hotel_amenities11`, `hotel_amenities12`, `hotel_amenities13`, `hotel_amenities14`, `hotel_amenities15`, `hotel_amenities16`, `hotel_amenities17`, `hotel_amenities18`, `hotel_amenities19`, `hotel_amenities20`, `hotel_amenities21`, `hotel_amenities22`, `hotel_amenities23`, `hotel_amenities24`, `hotel_amenities25`, `hotel_amenities26`, `hotel_amenities27`, `hotel_amenities28`, `hotel_amenities29`, `hotel_amenities30`, `hotel_amenities31`, `hotel_amenities32`, `hotel_amenities33`, `hotel_amenities34`, `hotel_amenities35`, `hotel_amenities36`, `hotel_amenities37`, `hotel_amenities38`, `hotel_amenities39`, `hotel_amenities40`, `hotel_amenities41`, `hotel_amenities42`, `rooms0deal_tagging`, `hotel_amenities43`, `hotel_amenities44`, `hotel_amenities45`, `hotel_amenities46`, `hotel_amenities47`, `hotel_amenities48`) VALUES
('10 Keira Street, Wollongong', 'true', 'No prepayment is needed.', 'Flexible 3 days – No prepayment needed', 'You may cancel free of charge until 3 days before arrival. You will be charged the cost of the first night if you cancel in the 3 days before arrival.', 12, NULL, NULL, NULL, '330.00', '194915503_265553241_0_0_0', '2020-10-26 23:59:59 +1100', 'true', 'false', 'Queen Studio', 2, 1, 194915503, 'AUD', 1949155, 'au', 'xu', '4.0', 'Bel Mondo Apartments', 'https://q-xx.bstatic.com/xdata/w/hotel/max500_watermarked_standard_bluecom/UlwzA3dxFLcGVfB6PbxGiJYALKkrGTL8d5hAdWXtbQfICzC70JPxIPIVjY5f_P4l9Gf6cfL6YYkVoT4TOCRa3o06m6eCd1mO4cxenSZOWerw2k7rSoT7jYaa1Q5elA.jpg', '330.00', 2500, '18:00', '15:00', 'paid_parking', 'non_smoking_rooms', 'facilities_for_disabled', 'family_rooms', 'free_parking', 'internet_services', 'wireless_lan', 'free_wifi_internet_access_included', 'all_public_and_private_spaces_non_smoking', 'air_conditioning', 'daily_maid_service', 'parking_on_site', 'private_parking', 'cleaning_chemicals', 'linens_legal_wash', 'rooms_disinfected', 'rooms_sealed_after_cleaning', 'staff_follows_safety_measures', 'stationery_removed', 'health_check_available', 'first_aid_kit_available', 'contactless_checkin', 'cashless_payments', 'social_distancing', 'professional_cleaning', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('10 Pleasant Avenue, Wollongong', 'true', 'No prepayment is needed.', 'Flexible 2 days – No prepayment needed', 'You may cancel free of charge until 2 days before arrival. You will be charged the cost of the first night if you cancel in the 2 days before arrival.', 9, NULL, NULL, NULL, '346.00', '41487016_265528043_2_0_0', '2020-10-27 23:59:59 +1100', 'true', 'false', 'Queen Room - Disability Access', 2, 1, 41487016, 'AUD', 414870, 'au', 'en', '3.0', 'Beach Park Motel', 'https://q-xx.bstatic.com/xdata/w/hotel/max500_watermarked_standard_bluecom/UlwzA3dxFLcGVbJLx2-YOPvPg2aK7SiH0ozVG7JuT-mlVtlopI-CZ98muX91V_2NinjMm_i3rQesyseL13TWlBLN7ornl2q6VwcQMsw9ngPWMutteXlYHEVkGDE2XA.jpg', '346.00', 2500, '16:00', '13:00', 'paid_parking', 'garden', 'non_smoking_rooms', 'facilities_for_disabled', 'family_rooms', 'free_parking', 'internet_services', 'wireless_lan', 'free_wifi_internet_access_included', 'air_conditioning', 'beach_front', 'parking_on_site', 'private_parking', 'cleaning_chemicals', 'linens_legal_wash', 'rooms_disinfected', 'rooms_sealed_after_cleaning', 'staff_follows_safety_measures', 'hand_sanitizers_available', 'health_check_available', 'social_distancing', 'professional_cleaning', 'optional_cleaning', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('111 Princes Highway (cross street Gibsons Road), Wollongong', 'true', 'No prepayment is needed.', 'Flexible 1 day – No prepayment needed', 'You may cancel free of charge until 1 day before arrival. You will be charged the cost of the first night if you cancel within 1 day before arrival.', 9, NULL, NULL, NULL, '258.00', '43480603_272801178_0_0_0', '2020-10-28 23:59:59 +1100', 'true', 'false', 'Queen Room', 2, 10, 43480603, 'AUD', 434806, 'au', 'en', '3.5', 'Solomon Inn Wollongong', 'https://q-xx.bstatic.com/xdata/w/hotel/max500_watermarked_standard_bluecom/UlyU0T7wgVdGc_8F-N-Euyo-Beiio2Ll4a4u5aYFBqsagXkmz3gPf9thqOlAnqsS1SxVBBGpmMOp9N4nTVb-6Pf7Nm29Fwxhz8p2-qy5zaxO5mGMQUb6kAumU8yoKw.jpg', '258.00', 2525, '21:00', '13:00', 'paid_parking', 'bar', 'garden', 'non_smoking_rooms', 'family_rooms', 'free_parking', 'internet_services', 'luggage_storage', 'wireless_lan', 'free_wifi_internet_access_included', 'all_public_and_private_spaces_non_smoking', 'air_conditioning', 'parking_on_site', 'private_parking', 'wifi_everywhere', 'cleaning_chemicals', 'linens_legal_wash', 'rooms_disinfected', 'rooms_sealed_after_cleaning', 'staff_follows_safety_measures', 'stationery_removed', 'first_aid_kit_available', 'cashless_payments', 'social_distancing', 'optional_cleaning', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('19 Carters Lane, Wollongong', 'true', 'No prepayment is needed.', 'Flexible 1 day – No prepayment needed', 'You may cancel free of charge until 1 day before arrival. You will be charged the cost of the first night if you cancel within 1 day before arrival.', 12, NULL, NULL, NULL, '440.30', '36696203_274305385_2_2_0', '2020-10-28 23:59:59 +1100', 'true', 'false', 'Studio with Balcony', 2, 2, 36696203, 'AUD', 366962, 'au', 'en', '4.0', 'Quality Suites Pioneer Sands', 'https://q-xx.bstatic.com/xdata/w/hotel/max500_watermarked_standard_bluecom/Ul0zA3dxFLcGVXL3YzENPrkHs3Dp8pggWf9GR7Nc1A8e01paRwwAsS5GDtMTA3pkwnuDFa5TRqsN9V-Ws2H2jq1oDaiM9QUrlX6ZLdfx-T1yq6i6jtdAiPC-H-pY8OE.jpg', '440.30', 2518, '20:00', '14:00', 'paid_parking', 'meeting_facilities', 'bar', 'fitness_room', 'garden', 'non_smoking_rooms', 'facilities_for_disabled', 'family_rooms', 'free_parking', 'internet_services', 'elevator', 'luggage_storage', 'wireless_lan', 'free_wifi_internet_access_included', 'all_public_and_private_spaces_non_smoking', 'air_conditioning', 'daily_maid_service', 'parking_on_site', 'private_parking', 'wifi_everywhere', 'cleaning_chemicals', 'linens_legal_wash', 'rooms_disinfected', 'social_distancing_in_dining_areas', 'in_room_dining', 'staff_follows_safety_measures', 'hand_sanitizers_available', 'health_check_available', 'first_aid_kit_available', 'cashless_payments', 'social_distancing', 'separators', 'sanitized_dinnerware', 'optional_cleaning', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('19 Flinders Street, Wollongong', 'true', 'No prepayment is needed.', 'Flexible 2 days – No prepayment needed', 'You may cancel free of charge until 2 days before arrival. You will be charged the cost of the first night if you cancel in the 2 days before arrival.', 8, NULL, NULL, NULL, '270.00', '43189403_107995502_0_40_0', '2020-10-27 23:59:59 +1100', 'true', 'false', 'Standard Twin Room', 2, 1, 43189403, 'AUD', 431894, 'au', 'en', '3.0', 'Flinders Motel', 'https://q-xx.bstatic.com/xdata/w/hotel/max500_watermarked_standard_bluecom/UlwzA3dxFLcGVfByxGd06V7uizTkJ0-3Tga6hj69vQaqUGVpVWY18QFCuQN9Yplk6zpVi47b5ZC2nZn0Y-6Xke_TE_QRjo1w6u9X7Nrpa_f06Fg8W3c3WuH91blxsQ.jpg', '270.00', 2500, '17:00', '14:00', 'paid_parking', 'restaurant', 'golf_course_close_by', 'garden', 'non_smoking_rooms', 'family_rooms', 'free_parking', 'internet_services', 'luggage_storage', 'wireless_lan', 'free_wifi_internet_access_included', 'all_public_and_private_spaces_non_smoking', 'air_conditioning', 'daily_maid_service', 'parking_on_site', 'private_parking', 'wifi_everywhere', 'first_aid_kit_available', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('19 Market Street, Wollongong', 'true', 'No prepayment is needed.', 'Flexible 1 day – No prepayment needed', 'You may cancel free of charge until 1 day before arrival. You will be charged the cost of the first night if you cancel within 1 day before arrival.', 12, NULL, NULL, NULL, '493.20', '3796101_221284622_2_0_0', '2020-10-28 23:59:59 +1100', 'true', 'false', 'Studio', 2, 3, 3796101, 'AUD', 37961, 'au', 'en', '4.5', 'Adina Apartment Hotel Wollongong', 'https://q-xx.bstatic.com/xdata/w/hotel/max500_watermarked_standard_bluecom/Ul2U0T7wgVdGcw9GnISzKcquD5gF-rs71qiJTTPbO31_VjsnWEGQpjk9xtD1mjX0abtql7fkW7WCuEkYu8RedAi1kRT3-O9_IR8y2c99H-wRlMyZq8_Bhy0oCahrZfs.jpg', '493.20', 2500, NULL, '14:00', 'paid_parking', 'meeting_facilities', 'bar', '24_hour_front_desk', 'sauna', 'fitness_room', 'golf_course_close_by', 'non_smoking_rooms', 'fishing', 'facilities_for_disabled', 'family_rooms', 'internet_services', 'elevator', 'hiking', 'horse_riding', 'luggage_storage', 'wireless_lan', 'swimmingpool_outdoor', 'free_wifi_internet_access_included', 'all_public_and_private_spaces_non_smoking', 'air_conditioning', 'outdoor_swimming_pool_all_year', 'daily_maid_service', 'grocery_deliveries', 'parking_on_site', 'private_parking', 'wifi_everywhere', 'swimming_pool', 'cleaning_chemicals', 'linens_legal_wash', 'rooms_disinfected', 'rooms_sealed_after_cleaning', 'social_distancing_in_dining_areas', 'in_room_dining', 'staff_follows_safety_measures', 'stationery_removed', 'hand_sanitizers_available', 'first_aid_kit_available', 'cashless_payments', 'social_distancing', 'professional_cleaning', 'sanitized_dinnerware', 'optional_cleaning', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('2-14 Cliff Road, Wollongong', 'true', 'You will be charged a prepayment of the total price at any time.', 'Non-refundable – Prepayment needed', 'Please note, if cancelled, modified or in case of no-show, the total price of the reservation will be charged.', 9, NULL, NULL, NULL, '593.00', '3556904_95156930_2_2_0', NULL, 'false', 'true', 'Queen Room with City View - Non-refundable', 2, 7, 3556904, 'AUD', 35569, 'au', 'en', '4.5', 'Novotel Wollongong Northbeach', 'https://q-xx.bstatic.com/xdata/w/hotel/max500_watermarked_standard_bluecom/Ul2U0T7wgVdGc82FEVNTKC109yqwHYRaeb3wjZCIAeLsa7z4Be9NuYm7AGINm7avuilLdOGBOtnoUblc-be5FV96B7YPQ3D1vKHi2ukVoI_XoRFAnHOKQbOPTsAehms.jpg', '593.00', 2520, NULL, '14:00', 'paid_parking', 'restaurant', 'meeting_facilities', 'bar', '24_hour_front_desk', 'sauna', 'fitness_room', 'golf_course_close_by', 'non_smoking_rooms', 'babysitting_child_services', 'facilities_for_disabled', 'family_rooms', 'internet_services', 'elevator', 'spa_wellness_centre', 'massage', 'hiking', 'luggage_storage', 'wireless_lan', 'swimmingpool_outdoor', 'all_public_and_private_spaces_non_smoking', 'air_conditioning', 'outdoor_swimming_pool_all_year', 'beach_front', 'evening_entertainment', 'daily_maid_service', 'parking_on_site', 'paid_wifi', 'wheelchair_accessible', 'swimming_pool', 'cleaning_chemicals', 'linens_legal_wash', 'rooms_disinfected', 'social_distancing_in_dining_areas', 'in_room_dining', 'staff_follows_safety_measures', 'stationery_removed', 'hand_sanitizers_available', 'health_check_available', 'first_aid_kit_available', 'contactless_checkin', 'cashless_payments', 'social_distancing', NULL, 'separators', 'sanitized_dinnerware', 'optional_cleaning', 'covered_food_delivery', 'access_to_health_care_professional', 'free_face_masks'),
('201 Pioneer Road, Fairy Meadow, Wollongong', 'true', 'You will be charged a prepayment of the total price at any time.', 'Non-refundable – Prepayment needed', 'Please note, if cancelled, modified or in case of no-show, the total price of the reservation will be charged.', 9, NULL, NULL, NULL, '394.00', '29807907_88835342_0_0_0', NULL, 'false', 'true', 'Double Room with Air-Conditioning - Non-refundable', 2, 10, 29807907, 'AUD', 298079, 'au', 'en', '4.0', 'Wollongong Surf Leisure Resort', 'https://q-xx.bstatic.com/xdata/w/hotel/max500_watermarked_standard_bluecom/Ul2U0T7wgVdGc99PFXpUW_dTowOntnJ6Hg0-7U7lfAXGWnowWkoHPy8kvq285Ic8zRxixMN1K0rebXBJ77AJk5kF07PnaEVYr3O2spaTAe-14IuJaUrjFjUiHsbzMkQ.jpg', '394.00', 2519, '15:00', '14:00', 'paid_parking', 'meeting_facilities', 'sauna', 'garden', 'non_smoking_rooms', 'family_rooms', 'free_parking', 'internet_services', 'spa_wellness_centre', 'children_play_ground', 'bbq_facilities', 'wireless_lan', 'minigolf', 'swimmingpool_indoor', 'air_conditioning', 'indoor_swimming_pool_all_year', 'beach_front', 'parking_on_site', 'paid_wifi', 'swimming_pool', 'cleaning_chemicals', 'linens_legal_wash', 'rooms_disinfected', 'rooms_sealed_after_cleaning', 'staff_follows_safety_measures', 'stationery_removed', 'hand_sanitizers_available', 'first_aid_kit_available', 'contactless_checkin', 'cashless_payments', 'social_distancing', 'separators', 'thermometers_available', 'free_face_masks', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('28 Bridge Street, Wollongong', NULL, 'You will be charged a prepayment of the total price at any time.', 'Non-refundable – Prepayment needed', 'Please note, if cancelled, modified or in case of no-show, the total price of the reservation will be charged.', 9, NULL, NULL, NULL, '359.00', '544322901_195774755_0_0_0', NULL, 'false', 'true', 'Standard Queen Room - Non-refundable', 2, 2, 544322901, 'AUD', 5443229, 'au', 'xu', '4.0', 'Coniston Hotel Wollongong', 'https://q-xx.bstatic.com/xdata/w/hotel/max500_watermarked_standard_bluecom/Ul0zA3dxFLcGVbTOQiQZGCl69QwY_IR3JvRDXeXzAHAFrPDgC9VWP5g87YnaDcOwVHjYaFdVD8wT2-DKUzoZGNY1MfWfwEQVYnMpHL7-Df8Mju3g6JY9Sc_D743fg64.jpg', '359.00', 2500, '00:00', '14:00', 'paid_parking', 'restaurant', 'meeting_facilities', 'bar', 'non_smoking_rooms', 'facilities_for_disabled', 'family_rooms', 'free_parking', 'internet_services', 'elevator', 'wireless_lan', 'free_wifi_internet_access_included', 'air_conditioning', 'evening_entertainment', 'daily_maid_service', 'parking_on_site', 'private_parking', 'wifi_everywhere', 'wheelchair_accessible', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('30 Bourke Street, Wollongong', NULL, 'You will be charged a prepayment of the total price at any time.', 'Non-refundable – Prepayment needed', 'Please note, if cancelled, modified or in case of no-show, the total price of the reservation will be charged.', 9, NULL, NULL, NULL, '314.78', '31908102_242893103_0_0_0', NULL, 'false', 'true', 'Double Room - Non-refundable', 2, 4, 31908102, 'AUD', 319081, 'au', 'en', '3.0', 'Normandie Inn and Function Centre', 'https://q-xx.bstatic.com/xdata/w/hotel/max500_watermarked_standard_bluecom/UlyU0T7wgVdGcwq6TNoLeYE9C5y_XUzl2cYiMA_UGHscpr8DqJEAmMB87oASLnkF5siLdQqjL6VLB0WE7hCmNmDjSkJ1IxKJcea1a-3RWbriN3Gwz62dywBC_vJ-Ng.jpg', '314.78', 2500, '23:00', '14:00', 'paid_parking', 'non_smoking_rooms', 'free_parking', 'internet_services', 'luggage_storage', 'wireless_lan', 'free_wifi_internet_access_included', 'air_conditioning', 'parking_on_site', 'private_parking', 'wifi_everywhere', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('39 Smith Street, Wollongong', 'true', 'You will be charged a prepayment of the cost of the first night in the 2 days before arrival.', 'Flexible 2 days – Prepayment needed', 'You may cancel free of charge until 2 days before arrival. You will be charged the cost of the first night if you cancel in the 2 days before arrival.', 1, NULL, NULL, NULL, '404.00', '65934303_277229802_2_0_0', '2020-10-27 23:59:59 +1100', 'true', 'true', 'One-Bedroom Apartment', 2, 4, 65934303, 'AUD', 659343, 'au', 'en', '3.5', 'The Belmore All-Suite Hotel', 'https://q-xx.bstatic.com/xdata/w/hotel/max500_watermarked_standard_bluecom/UlwzA3dxFLcGVR_g-cvGsmLjozdb4zWj_qvp7BGfJOB8P5UUQqIJkqCWBCAAp_qGxyNkdP4XBH1NZMoRG8j73rHemwgcFOMHjCS5PLlImOu2vbZLpZdLT8EZvd_u5Q.jpg', '404.00', 2500, '18:30', '14:00', 'paid_parking', 'golf_course_close_by', 'garden', 'non_smoking_rooms', 'facilities_for_disabled', 'family_rooms', 'free_parking', 'internet_services', 'wireless_lan', 'free_wifi_internet_access_included', 'all_public_and_private_spaces_non_smoking', 'air_conditioning', 'daily_maid_service', 'parking_on_site', 'private_parking', 'wifi_everywhere', 'cleaning_chemicals', 'linens_legal_wash', 'rooms_disinfected', 'social_distancing_in_dining_areas', 'in_room_dining', 'staff_follows_safety_measures', 'hand_sanitizers_available', 'first_aid_kit_available', 'contactless_checkin', 'cashless_payments', 'social_distancing', 'separators', 'sanitized_dinnerware', 'optional_cleaning', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('54 Kembla Street, Wollongong', 'true', 'No prepayment is needed.', 'Flexible 1 day – No prepayment needed', 'You may cancel free of charge until 1 day before arrival. You will be charged the cost of the first night if you cancel within 1 day before arrival.', 1, NULL, NULL, NULL, '446.00', '27336201_198959455_0_0_0', '2020-10-28 23:59:59 +1100', 'true', 'false', 'One-Bedroom Apartment', 2, 1, 27336201, 'AUD', 273362, 'au', 'en', '4.0', 'Wollongong Serviced Apartments', 'https://q-xx.bstatic.com/xdata/w/hotel/max500_watermarked_standard_bluecom/Ul0zA3dxFLcGVUoZmn0bQPA7YGULmXowB1q0x8yNusMXMJeTzgNSWWGoAj6cSPxZ6zTGm-oTwjA8PzwibhSac-36uI8p6XxSimAmmMDXdoWwS6WaBTj6grVI2ZPsoDA.jpg', '446.00', 2500, '17:00', '14:00', 'paid_parking', 'garden', 'non_smoking_rooms', 'family_rooms', 'free_parking', 'internet_services', 'elevator', 'luggage_storage', 'wireless_lan', 'free_wifi_internet_access_included', 'all_public_and_private_spaces_non_smoking', 'air_conditioning', 'daily_maid_service', 'parking_on_site', 'private_parking', 'wifi_everywhere', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('59 - 61 Kembla Street, Wollongong', 'true', 'You will be charged a prepayment of the total price of the reservation in the 2 days before arrival.', 'Flexible 2 days – Prepayment needed', 'You may cancel free of charge until 2 days before arrival. You will be charged the total price of the reservation if you cancel in the 2 days before arrival. If you don’t show up you will be charged the total price of the reservation.', 1, NULL, NULL, NULL, '498.00', '25447402_277132731_0_0_0', '2020-10-27 23:59:59 +1100', 'true', 'true', 'One-Bedroom Apartment', 2, 9, 25447402, 'AUD', 254474, 'au', 'en', '4.0', 'Quest Wollongong', 'https://q-xx.bstatic.com/xdata/w/hotel/max500_watermarked_standard_bluecom/Ul0zA3dxFLcGVWpU8_n2WKw_ga6ZjhOucxALqoGQ6nzm6u31D2cm85YvlUWYMeCtjH1KexH4kej2SoCVfciNZQH6RehCWAddicn5LQnKxF5h1Gc34Or3wBXGdMtumoM.jpg', '498.00', 2500, '20:00', '14:00', 'paid_parking', 'meeting_facilities', 'golf_course_close_by', 'non_smoking_rooms', 'fishing', 'facilities_for_disabled', 'family_rooms', 'internet_services', 'elevator', 'windsurfing', 'canoeing', 'hiking', 'bowling', 'horse_riding', 'luggage_storage', 'wireless_lan', 'free_wifi_internet_access_included', 'all_public_and_private_spaces_non_smoking', 'air_conditioning', 'aqua_park', 'daily_maid_service', 'grocery_deliveries', 'parking_on_site', 'wifi_everywhere', 'wheelchair_accessible', 'cleaning_chemicals', 'linens_legal_wash', 'rooms_disinfected', 'social_distancing_in_dining_areas', 'in_room_dining', 'staff_follows_safety_measures', 'stationery_removed', 'hand_sanitizers_available', 'health_check_available', 'first_aid_kit_available', 'contactless_checkin', 'cashless_payments', 'social_distancing', 'separators', 'sanitized_dinnerware', 'optional_cleaning', 'breakfast_takeaway_boxes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('6-10 Gladstone Avenue, Wollongong', NULL, 'You will be charged a prepayment of the total price of the reservation within 1 day before arrival.', 'Flexible 1 day – Prepayment needed', 'You may cancel free of charge until 1 day before arrival. You will be charged the total price of the reservation if you cancel within 1 day before arrival.', 9, NULL, NULL, NULL, '538.00', '3757101_232551694_0_0_0', '2020-10-28 23:59:59 +1100', 'true', 'true', 'Superior One-Bedroom Apartment', 2, 10, 3757101, 'AUD', 37571, 'au', 'en', '4.5', 'Mantra Wollongong', 'https://q-xx.bstatic.com/xdata/w/hotel/max500_watermarked_standard_bluecom/Ul2U0T7wgVdGc9lc2z_4UZJSBigCuimejWco46RTNWxZGWcdXi_XHZeTbWQe4IUIRrU4NIgL78bgD-VdQubPW3Z-xhhfcjVgffw5VD6x2CR_bMjpaniLAK0h3u9DeWI.jpg', '538.00', 2500, '18:00', '14:00', 'paid_parking', 'golf_course_close_by', 'non_smoking_rooms', 'fishing', 'facilities_for_disabled', 'family_rooms', 'internet_services', 'elevator', 'bowling', 'diving', 'horse_riding', 'luggage_storage', 'wireless_lan', 'free_wifi_internet_access_included', 'all_public_and_private_spaces_non_smoking', 'air_conditioning', 'aqua_park', 'parking_on_site', 'wifi_everywhere', 'cleaning_chemicals', 'linens_legal_wash', 'rooms_disinfected', 'rooms_sealed_after_cleaning', 'social_distancing_in_dining_areas', 'in_room_dining', 'staff_follows_safety_measures', 'stationery_removed', 'hand_sanitizers_available', 'health_check_available', 'first_aid_kit_available', 'cashless_payments', 'social_distancing', 'separators', 'professional_cleaning', 'sanitized_dinnerware', 'optional_cleaning', 'covered_food_delivery', 'access_to_health_care_professional', 'thermometers_available', 'free_face_masks', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('60-62 Harbour Street, Wollongong', 'true', 'No prepayment is needed.', 'Flexible 1 day – No prepayment needed', 'You may cancel free of charge until 1 day before arrival. You will be charged the cost of the first night if you cancel within 1 day before arrival. If you don’t show up you will be charged the total price of the reservation.', 9, 15, 455, 'Business Rates', '386.75', '25769401_250434821_2_2_0', '2020-10-28 23:59:59 +1100', 'true', 'false', 'Deluxe Queen Room', 2, 10, 25769401, 'AUD', 257694, 'au', 'en', '4.5', 'Sage Hotel Wollongong', 'https://q-xx.bstatic.com/xdata/w/hotel/max500_watermarked_standard_bluecom/Ul0zA3dxFLcGVYWtCWpVl_SmHx_W3huseOdhOfmvHJRyZM4NJwfEG7HRlxbaLlXSaeoHVdtNLmvEJbb53JDauuF_qYYX3g5HXSult8y7WjxMa_7gOBINUKLIeYebC7Y.jpg', '386.75', 2500, NULL, '14:00', 'paid_parking', 'restaurant', 'meeting_facilities', 'bar', '24_hour_front_desk', 'fitness_room', 'golf_course_close_by', 'non_smoking_rooms', 'business_center', 'facilities_for_disabled', 'internet_services', 'elevator', 'luggage_storage', 'wireless_lan', 'swimmingpool_outdoor', 'free_wifi_internet_access_included', 'all_public_and_private_spaces_non_smoking', 'air_conditioning', 'outdoor_swimming_pool_all_year', 'trouser_press', 'daily_maid_service', 'parking_on_site', 'private_parking', 'wifi_everywhere', 'wheelchair_accessible', 'swimming_pool', 'cleaning_chemicals', 'linens_legal_wash', 'rooms_disinfected', 'social_distancing_in_dining_areas', 'staff_follows_safety_measures', 'stationery_removed', 'hand_sanitizers_available', 'first_aid_kit_available', 'contactless_checkin', 'cashless_payments', 'social_distancing', 'professional_cleaning', 'sanitized_dinnerware', 'optional_cleaning', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('65 Church Street, Wollongong', 'true', 'No prepayment is needed.', 'Flexible 2 days – No prepayment needed', 'You may cancel free of charge until 2 days before arrival. You will be charged the total price of the reservation if you cancel in the 2 days before arrival.', 1, NULL, NULL, NULL, '669.90', '633087201_270568989_0_0_0', '2020-10-27 23:59:59 +1100', 'true', 'false', 'One-Bedroom Apartment', 2, 5, 633087201, 'AUD', 6330872, 'au', 'en', NULL, 'Argo Apartments', 'https://q-xx.bstatic.com/xdata/w/hotel/max500_watermarked_standard_bluecom/Ul0zA3dxFLcGVSFSQUCdMGwTctbAwnYwjw46e4A8Dynw6NoD3FiDkOU0FWDGlBbRvUI36_KWsq-KAGGZt2S6FbQ54t-K8N8fnmqTtQe_2TeUL9rmOhS3rTYO_6MkVBA.jpg', '669.90', 2500, '19:30', '14:00', 'paid_parking', 'pets_allowed', 'golf_course_close_by', 'non_smoking_rooms', 'babysitting_child_services', 'facilities_for_disabled', 'family_rooms', 'elevator', 'luggage_storage', 'all_public_and_private_spaces_non_smoking', 'air_conditioning', 'trouser_press', 'daily_maid_service', 'parking_on_site', 'private_parking', 'wheelchair_accessible', 'cleaning_chemicals', 'linens_legal_wash', 'rooms_disinfected', 'rooms_sealed_after_cleaning', 'staff_follows_safety_measures', 'hand_sanitizers_available', 'health_check_available', 'first_aid_kit_available', 'contactless_checkin', 'cashless_payments', 'social_distancing', 'optional_cleaning', 'access_to_health_care_professional', 'thermometers_available', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('76 Crown Str., Wollongong', 'true', 'You will be charged a prepayment of the cost of the first night after reservation.', 'Flexible 1 day – Prepayment needed', 'You may cancel free of charge until 1 day before arrival. You will be charged the cost of the first night if you cancel within 1 day before arrival.', 24, NULL, NULL, NULL, '198.00', '196015401_138458107_2_0_0', '2020-10-28 23:59:59 +1100', 'true', 'true', 'Double or Twin Room', 2, 4, 196015401, 'AUD', 1960154, 'au', 'en', '2.0', 'Downtown Motel', 'https://q-xx.bstatic.com/xdata/w/hotel/max500_watermarked_standard_bluecom/UlwzA3dxFLcGVZo5CTdL5HccTK0q-iH_Pi9HY0B0tgyz__jeXAnlqsLDnqV4d7PoOyZMY55lEJU5P4LDay7w0RsD5GIHwhXDnSOEG8rb7nrvYRG0XRz2WV7ofmObxA.jpg', '198.00', 2500, '19:00', '14:00', 'paid_parking', 'non_smoking_rooms', 'family_rooms', 'free_parking', 'all_public_and_private_spaces_non_smoking', 'air_conditioning', 'parking_on_site', 'private_parking', 'cleaning_chemicals', 'linens_legal_wash', 'rooms_disinfected', 'rooms_sealed_after_cleaning', 'social_distancing_in_dining_areas', 'in_room_dining', 'staff_follows_safety_measures', 'stationery_removed', 'hand_sanitizers_available', 'health_check_available', 'first_aid_kit_available', 'contactless_checkin', 'cashless_payments', 'social_distancing', 'professional_cleaning', 'sanitized_dinnerware', 'optional_cleaning', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('98 Princes Highway, Wollongong', NULL, 'You will be charged a prepayment of the total price of the reservation within 1 day before arrival.', 'Flexible 1 day – Prepayment needed', 'You may cancel free of charge until 1 day before arrival. You will be charged the total price of the reservation if you cancel within 1 day before arrival.', 12, NULL, NULL, NULL, '347.70', '119507701_135011521_0_0_0', '2020-10-28 23:59:59 +1100', 'true', 'true', 'Studio with Queen Bed', 2, 4, 119507701, 'AUD', 1195077, 'au', 'en', '3.5', 'Nightcap at the Charles Hotel', 'https://q-xx.bstatic.com/xdata/w/hotel/max500_watermarked_standard_bluecom/Ul0zA3dxFLcGVZk7Qy__3irSLMcbkIDblBo9tBFtPp4YzfP0bh089kcLVuRemChBj3P854XikjeMfHLS2iiA6fIF83XOjKiEWabK5cOjjMTwfVvnAZEb_w2tu4P4Mus.jpg', '347.70', 2519, '22:00', '14:00', 'paid_parking', 'restaurant', 'bar', 'non_smoking_rooms', 'free_parking', 'internet_services', 'luggage_storage', 'wireless_lan', 'free_wifi_internet_access_included', 'all_public_and_private_spaces_non_smoking', 'air_conditioning', 'parking_on_site', 'private_parking', 'wifi_everywhere', 'cleaning_chemicals', 'linens_legal_wash', 'rooms_disinfected', 'rooms_sealed_after_cleaning', 'social_distancing_in_dining_areas', 'in_room_dining', 'staff_follows_safety_measures', 'stationery_removed', 'hand_sanitizers_available', 'health_check_available', 'first_aid_kit_available', 'contactless_checkin', 'cashless_payments', 'social_distancing', 'separators', 'sanitized_dinnerware', 'optional_cleaning', 'breakfast_takeaway_boxes', 'covered_food_delivery', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Cnr Bank & Corrimal Street, Wollongong', NULL, 'You will be charged a prepayment of the total price at any time.', 'Flexible 2 days – Prepayment needed', 'You may cancel free of charge until 2 days before arrival. You will be charged the total price of the reservation if you cancel in the 2 days before arrival.', 1, 15, 689, 'Business Rates', '585.65', '32065803_189123825_0_40_0', '2020-10-27 23:59:59 +1100', 'true', 'true', 'One-Bedroom Apartment with Ocean View', 2, 4, 32065803, 'AUD', 320658, 'au', 'en', '4.0', 'Best Western City Sands', 'https://q-xx.bstatic.com/xdata/w/hotel/max500_watermarked_standard_bluecom/Ul0zA3dxFLcGVVIGShSUlB9bVQN_GLyYKUKgi2gjyhVqupqtREjo5viogqIgSiBR7P5Wuxx0gNEUA91m8TpAf4e4e4HlnGYKH4yDrS6ycsqhsztcFrRdduJ0HQtH0u0.jpg', '585.65', 2500, '22:00', '14:00', 'paid_parking', 'restaurant', 'meeting_facilities', 'bar', 'golf_course_close_by', 'garden', 'non_smoking_rooms', 'facilities_for_disabled', 'family_rooms', 'casino', 'free_parking', 'internet_services', 'elevator', 'luggage_storage', 'wireless_lan', 'free_wifi_internet_access_included', 'all_public_and_private_spaces_non_smoking', 'air_conditioning', 'parking_on_site', 'private_parking', 'wifi_everywhere', 'wheelchair_accessible', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Cnr Kanahooka Drive and Prince Edward Drive, Dapto, Wollongong', 'true', 'You will be charged a prepayment of the cost of the first night after reservation.', 'Moderate 7 days – Prepayment needed', 'You may cancel free of charge until 7 days before arrival. You will be charged the cost of the first night if you cancel in the 7 days before arrival.', 9, NULL, NULL, NULL, '286.00', '46020803_201614797_2_0_0', '2020-10-22 23:59:59 +1100', 'true', 'true', 'Standard Double Room', 2, 4, 46020803, 'AUD', 460208, 'au', 'en', '3.0', 'Elsinor Motor Lodge', 'https://q-xx.bstatic.com/xdata/w/hotel/max500_watermarked_standard_bluecom/UlwzA3dxFLcGVbPEfpOfAR5srrLxuPTBxwHFxTtjtWQ-CwhxAuyVzuNjstvNdxX7ati3IA0OQSOKuRLPxhjzeiMz3l7LIyUvy7ozrnnr9cKe214J-uGsx7WXE608sg.jpg', '286.00', 2530, '21:30', '14:00', 'paid_parking', 'restaurant', 'bar', 'non_smoking_rooms', 'free_parking', 'internet_services', 'hot_tub', 'bbq_facilities', 'wireless_lan', 'swimmingpool_indoor', 'free_wifi_internet_access_included', 'air_conditioning', 'indoor_swimming_pool_all_year', 'daily_maid_service', 'parking_on_site', 'private_parking', 'wifi_everywhere', 'swimming_pool', 'linens_legal_wash', 'rooms_disinfected', 'stationery_removed', 'health_check_available', 'first_aid_kit_available', 'cashless_payments', 'social_distancing', 'separators', 'optional_cleaning', 'access_to_health_care_professional', 'thermometers_available', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb1_user`
--

CREATE TABLE `tb1_user` (
  `id` int(11) NOT NULL,
  `Firstname` varchar(50) NOT NULL,
  `Lastname` varchar(50) NOT NULL,
  `Designation` varchar(50) NOT NULL,
  `DOB` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Mobile` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Profileimg` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb1_user`
--

INSERT INTO `tb1_user` (`id`, `Firstname`, `Lastname`, `Designation`, `DOB`, `Email`, `Mobile`, `Password`, `Profileimg`) VALUES
(1, 'asda', 'asdasd', 'asdasd', '11/10/2020', 'arun@gmail.com', '9003131340', 'arun123', 'myn1143.jpeg'),
(2, 'sadsd', 'asdas', 'asdsa', '11/10/2020', 'sadas@gmail.com', '9003131340', 'arun123', 'myn1468.jpeg'),
(3, 'sdad', 'asdasdasd', 'sadasd', '11/03/2020', 'adad@gmail.com', '9003131340', 'arun123', 'myn1178.jpeg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb1_hotels`
--
ALTER TABLE `tb1_hotels`
  ADD PRIMARY KEY (`address`);

--
-- Indexes for table `tb1_user`
--
ALTER TABLE `tb1_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb1_user`
--
ALTER TABLE `tb1_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
