-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 15, 2017 at 10:53 AM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `skillsnavigator`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE IF NOT EXISTS `about` (
  `id` int(50) NOT NULL,
  `desc` varchar(500) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `desc`) VALUES
(3, 'Skills Navigator was started with a vision to provide skill-based training to students who wanted to make a career in skills biased job sectors.'),
(4, 'The objective was to extend this training to the huge educated and potential manpower base in the rural areas.'),
(5, 'From that initial focus on Skills Development, Skills Navigator graduated to developing and delivering training programs in urban, semi-urban and rural areas.'),
(6, 'The vision of the organization is to skill and employ, 1 million people by the end of 2022, expanding into areas like.');

-- --------------------------------------------------------

--
-- Table structure for table `about_courses`
--

CREATE TABLE IF NOT EXISTS `about_courses` (
  `id` int(50) NOT NULL,
  `desc` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `about_courses`
--

INSERT INTO `about_courses` (`id`, `desc`) VALUES
(1, 'As per the Job roles given in the NOS'),
(2, 'Average Duration 45 days'),
(3, 'Assessment Fee paid by Govt.'),
(4, 'Assessment is done by the Sector Skill Council');

-- --------------------------------------------------------

--
-- Table structure for table `admission_requirements`
--

CREATE TABLE IF NOT EXISTS `admission_requirements` (
  `id` int(50) NOT NULL,
  `requirement` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admission_requirements`
--

INSERT INTO `admission_requirements` (`id`, `requirement`) VALUES
(1, 'Enrollment Form'),
(2, 'Age Proof (10th Certificate/Date of Birth/Passport/Pan Card)'),
(3, 'Qualification Proof of Student (as per course)'),
(4, 'Passport Size Color Photograph'),
(5, 'Aadhar Card'),
(6, 'Bank Details - New Bank Account to open'),
(7, 'Assessment Fee'),
(8, 'Declaration - I know the Scheme'),
(9, 'Undertaking to Bank - 3 Copies'),
(10, 'Standing Instruction to Bank - 3 Copies');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE IF NOT EXISTS `banner` (
  `id` int(11) NOT NULL,
  `slide_url` varchar(50) NOT NULL,
  `alt` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `slide_url`, `alt`) VALUES
(1, 'images/modi.jpg', 'Sample Image 1'),
(2, 'images/farmer.jpg', 'Sample Image 2'),
(3, 'images/education.jpg', 'Sample image 3');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
  `id` int(50) NOT NULL,
  `address_line_one` varchar(50) NOT NULL,
  `address_line_two` varchar(20) NOT NULL,
  `city` varchar(20) NOT NULL,
  `pin` int(10) NOT NULL,
  `phone` varchar(500) NOT NULL,
  `email` varchar(30) NOT NULL,
  `website` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `address_line_one`, `address_line_two`, `city`, `pin`, `phone`, `email`, `website`) VALUES
(1, '1735, Street No-10A', 'Laxman Vihar, PH-II', 'Gurgaon', 122001, '+91 9711464710, +91 9911946681', 'info.skillsnavigator@gmail.com', 'www.skillsnavigator.in');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE IF NOT EXISTS `contacts` (
  `id` int(20) NOT NULL,
  `item` varchar(100) NOT NULL,
  `icon` varchar(40) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `item`, `icon`) VALUES
(1, '1735, Street No-10A\r\nLaxman Vihar, PH-II\r\nGurgaon 122001', 'fa fa-university'),
(2, '+91 9711464710, +91 9911946681', 'fa fa-phone'),
(3, 'info.skillsnavigator@gmail.com', 'fa fa-envelope-open'),
(4, 'www.skillsnavigator.in', 'fa fa-internet-explorer');

-- --------------------------------------------------------

--
-- Table structure for table `courses_offered`
--

CREATE TABLE IF NOT EXISTS `courses_offered` (
  `id` int(50) NOT NULL,
  `course` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses_offered`
--

INSERT INTO `courses_offered` (`id`, `course`) VALUES
(1, 'Agriculture'),
(2, 'Apparel, Made-ups & Home Furnishing'),
(3, 'Automotive'),
(4, 'Security'),
(5, 'Beauty & Wellness');

-- --------------------------------------------------------

--
-- Table structure for table `infrastructure_requirements`
--

CREATE TABLE IF NOT EXISTS `infrastructure_requirements` (
  `id` int(50) NOT NULL,
  `requirement` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `infrastructure_requirements`
--

INSERT INTO `infrastructure_requirements` (`id`, `requirement`) VALUES
(1, 'Classrooms equipped with seating capacity of at least 25 trainees'),
(2, 'Broadband internet connectivity with 512 mbps speed'),
(3, 'Biometric Attendance Machine and CCTV Camera'),
(4, 'LCD Projector'),
(5, 'Power back up (UPS & Genset)'),
(6, 'Printer, Scanner & Copier');

-- --------------------------------------------------------

--
-- Table structure for table `nsdc_ssc`
--

CREATE TABLE IF NOT EXISTS `nsdc_ssc` (
  `id` int(4) NOT NULL,
  `point` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nsdc_ssc`
--

INSERT INTO `nsdc_ssc` (`id`, `point`) VALUES
(1, 'Norms, Policies & Monitoring'),
(2, 'Funding'),
(3, 'Qualification Packs & National Occupation Standards'),
(4, 'Complete Assessment Process');

-- --------------------------------------------------------

--
-- Table structure for table `placement_process`
--

CREATE TABLE IF NOT EXISTS `placement_process` (
  `id` int(50) NOT NULL,
  `desc` varchar(1000) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `placement_process`
--

INSERT INTO `placement_process` (`id`, `desc`) VALUES
(1, 'At Skills Navigator, we do not talk about placements in absolute terms. For us placements are a part of the whole process. An important imbibed step in the complete cycle of employability, that''s what the placement process is to us. We rigorously work on our program content and methodology to make it in sync with the industrial demands vis-a-vis the local aspirations and a good placement record is just a byproduct of this rigor.'),
(2, 'Our placement process start way before the job interviews take place. We start with the analysis to map the skills desired in the industry followed by program modification and customization. After that, we map the skill gaps among the people and modify our pedagogy to bridge those gaps and make the students at par with the expectations of the industry. Guest lecture from industry veterans along with the site visits make an important part of our curriculum. This is a continuous process which goes on and on and is completely market driven. So if anything changes or gets updated in the industry, it immediately gets reflected in our curriculum.'),
(3, 'Once we feel that our students are well equipped with the knowledge and skills required to thrive in an industrial scenario, we arrange job interviews and fairs for them. We have partnered with renowned organization to give employment to our qualified students. These companies belong to varied sectors from Retail to ITES, from Construction to Telecom.');

-- --------------------------------------------------------

--
-- Table structure for table `pmkvy`
--

CREATE TABLE IF NOT EXISTS `pmkvy` (
  `id` int(50) NOT NULL,
  `description` varchar(500) NOT NULL,
  `objective` varchar(500) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pmkvy`
--

INSERT INTO `pmkvy` (`id`, `description`, `objective`) VALUES
(1, 'The recently approved Pradhan Mantri Kaushal Vikas Yojana (PMKVY), is a flagship scheme for imparting skill training to youth, focusing on improved curricula, better pedagogy and trained instructors. The training includes soft skills, personal grooming.', 'The objective of this Scheme is to encourage skill development for youth by providing monetary rewards for successful completion of approved training programs.');

-- --------------------------------------------------------

--
-- Table structure for table `pmkvy_charecteristics`
--

CREATE TABLE IF NOT EXISTS `pmkvy_charecteristics` (
  `id` int(50) NOT NULL,
  `desc` varchar(1000) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pmkvy_charecteristics`
--

INSERT INTO `pmkvy_charecteristics` (`id`, `desc`) VALUES
(1, 'India has marked its presence as one of the fastest growing economies of the world. It is expected to rank amongst the world''s top three growth economies and amongst the top three manufacturing destinations by 2020. With the help of favourable demographic factors and sustained availability of quality workforce, our country is poised to make its imprint on global economy.'),
(2, 'A new National Policy for Skill and Entrepreneurship Development has also emerged..');

-- --------------------------------------------------------

--
-- Table structure for table `pmkvy_char_points`
--

CREATE TABLE IF NOT EXISTS `pmkvy_char_points` (
  `id` int(50) NOT NULL,
  `point` varchar(300) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pmkvy_char_points`
--

INSERT INTO `pmkvy_char_points` (`id`, `point`) VALUES
(1, 'Programme aims to impart skill training to youth with focus on first time entrants to the labour market and class 10 and class 12 drop outs.'),
(2, 'Programme will be implemented by the Union Ministry of Skill Development and Entrepreneurship through the National Skill Development Corporation (NSDC) training partners.'),
(3, 'Skill training would be on the basis of skill gap studies conducted by the NSDC.'),
(4, 'Training would include soft skills, personal grooming, behavioral change for cleanliness, good work ethics.');

-- --------------------------------------------------------

--
-- Table structure for table `pmkvy_description`
--

CREATE TABLE IF NOT EXISTS `pmkvy_description` (
  `id` int(50) NOT NULL,
  `description` varchar(500) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pmkvy_description`
--

INSERT INTO `pmkvy_description` (`id`, `description`) VALUES
(1, 'The recently approved Pradhan Mantri Kaushal Vikas Yojana (PMKVY), is a flagship scheme for imparting skill training to youth, focusing on improved curricula, better pedagogy and trained instructors. The training includes soft skills, personal grooming.');

-- --------------------------------------------------------

--
-- Table structure for table `pmkvy_objective_points`
--

CREATE TABLE IF NOT EXISTS `pmkvy_objective_points` (
  `id` int(11) DEFAULT NULL,
  `point` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pmkvy_objective_points`
--

INSERT INTO `pmkvy_objective_points` (`id`, `point`) VALUES
(NULL, 'Encourage standardization in the certification process and initiate a process of creating a registry of skills Enable and mobilize a large number of Indian youth to take up skill training and become employable and earn their livelihood.'),
(NULL, 'Increase productivity of the existing workforce and align the training and certification to the needs of the country.'),
(NULL, 'Provide Monetary Awards for Skill Certification to boost employability and productivity of youth by incentivizing them for skill trainings Reward candidates undergoing skill training by authorized institutions at an average monetary reward of Rs. 8,000 (Rupees Eight Thousand) per candidate.'),
(NULL, 'Benefit to lakhs of youth.');

-- --------------------------------------------------------

--
-- Table structure for table `quotes`
--

CREATE TABLE IF NOT EXISTS `quotes` (
  `id` int(50) NOT NULL,
  `quote` varchar(500) NOT NULL,
  `author` varchar(100) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `img_url` varchar(100) NOT NULL,
  `place` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quotes`
--

INSERT INTO `quotes` (`id`, `quote`, `author`, `designation`, `img_url`, `place`) VALUES
(0, 'Skilling is Progress. The capabilities of our youth will take this nation forward.A nation whose youth are determined to utilize their capabilities to make their future, that nation doesn''t need to ever look back.', 'Shri Narendra Modi', 'Prime Minister of India', 'assets/images/modi.png', 'Madison Square, USA 28th September 2014');

-- --------------------------------------------------------

--
-- Table structure for table `skills_navigator`
--

CREATE TABLE IF NOT EXISTS `skills_navigator` (
  `id` int(4) NOT NULL,
  `point` varchar(100) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `skills_navigator`
--

INSERT INTO `skills_navigator` (`id`, `point`) VALUES
(1, 'Coordination with NSDC, SSC'),
(2, 'Course Material'),
(3, 'Marketing Strategy'),
(4, 'Logistics & Coordination'),
(5, 'Placement Assistance'),
(6, 'Infrastructure, Staff & Faculty'),
(7, 'Local Promotion & Enrollments'),
(8, 'Training & Placement');

-- --------------------------------------------------------

--
-- Table structure for table `what_we_do`
--

CREATE TABLE IF NOT EXISTS `what_we_do` (
  `id` int(50) NOT NULL,
  `desc` varchar(1000) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `what_we_do`
--

INSERT INTO `what_we_do` (`id`, `desc`) VALUES
(1, 'We share a common desire to bring about social change by empowering the unemployed and out-of-work youth by training them on vocational skills to make them Eduployable [Educated + Employable].'),
(2, 'This endeavor in turn, is aimed at giving a huge boost to the up scaling economy of the nation by making available, much-needed skilled manpower to the job market.'),
(3, 'Skills Navigator was launched in 2015, and over the years has successfully delivered in the vocational skills space leading to employment for hundreds. The organizations core goal has evolved make self-sufficient, the youth from smaller cities and towns of India who may have completed basic education, but have limited or no skills to make them employable. Many of these boys and girls are forced to seek employment in the larger towns and cities far from their families and support systems and often in unorganized sectors where there is no growth in career or salaries.');

-- --------------------------------------------------------

--
-- Table structure for table `why_skills_nav`
--

CREATE TABLE IF NOT EXISTS `why_skills_nav` (
  `id` int(50) NOT NULL,
  `desc` varchar(500) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `why_skills_nav`
--

INSERT INTO `why_skills_nav` (`id`, `desc`) VALUES
(1, 'The current education system does not focus on training young people in employable skills that can provide them with employment opportunities, and a large section of India''s labour force has outdated skills. With the expected economic growth, this challenge is going to only increase further, since more than 75% of new job opportunities are expected to be skill-based. The government, thus, is strongly emphasizing on upgrading people''s skills by providing vocational education and training to them.'),
(2, 'Skill and knowledge are the two driving forces of economic growth and social development for any country. Countries with higher level of skills fare better to cope with the challenges of emerging economies in the present day world.'),
(3, 'In any country, youth is primarily the focus for any program for skill development.\r\nOur country is better placed in this regard. We have a vast majority of population in the productive age group. This provides a great opportunity to India. It also poses a great challenge. Benefits will flow to our economy only if our population, particularly the youth, is healthy, educated and properly skilled.'),
(4, 'India with its an unrivalled youth demographic, is definitely poised for a big boost in terms of socio-economic development. We have 605 million people below the age of 25. They can act as agents of change, by being empowered with various employable skills which will enable them to make impact not only on their lives but also on the lives of other individuals.');

-- --------------------------------------------------------

--
-- Table structure for table `why_skills_nav_detail`
--

CREATE TABLE IF NOT EXISTS `why_skills_nav_detail` (
  `id` int(50) NOT NULL,
  `desc` varchar(1000) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `why_skills_nav_detail`
--

INSERT INTO `why_skills_nav_detail` (`id`, `desc`) VALUES
(1, 'Albeit there are numerous training academies mushrooming around the country, SKILLS NAVIGATOR is your best bet when it comes to the holistic development. From our infrastructure & curriculum to our linkages and associations, every single thing has thoroughly been worked to be a class apart.'),
(2, 'SKILLS NAVIGATOR is an organization which is a hallmark of trust in skill development. We have also our assessment body to keep a check on the quality of our programs and methodology. Our programs are largely market driven and job oriented with a high degree of relevance to the industrial practices. SKILSS NAVIGATOR is an assurance of the quality in imparting skill development training to the unqualified youth.'),
(3, 'When it comes to our infrastructure, we have our own operated centers all across the country along with the centers we run in collaboration with third party. All of our centers are well equipped with all the necessary resources. We only charge a nominal fee for our programs while distributing free student kits and tool kits for our non technical and technical courses respectively.'),
(4, 'SKILLS NAVIGATOR only deploys highly experienced and best in class trainers to\r\nimpart the skill training. Our rigorous selection process for our trainers raises the delivery quality to a new level unmatched by any other training organization in the country. Our well researched pedagogy is simple and more effective in order to bring all students on the same plank while imparting training.'),
(5, 'We have deep academic and placement associations with renowned organizations both in public as well as in private sectors. These organizations are from varied sectors such as Retail, Construction, IT, Telecom, Hospitality etc.'),
(6, 'In a nut shell, joining SKILLS NAVIGATOR would be one of the best decisions of your life.');

-- --------------------------------------------------------

--
-- Table structure for table `why_skills_nav_points`
--

CREATE TABLE IF NOT EXISTS `why_skills_nav_points` (
  `id` int(50) NOT NULL,
  `points` varchar(500) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `why_skills_nav_points`
--

INSERT INTO `why_skills_nav_points` (`id`, `points`) VALUES
(1, 'We are committed to providing maximum placement assistance'),
(2, 'Our courses are job oriented'),
(3, 'All our programs are industry relevant'),
(4, 'Industry relevant course material is prepared by industry experts'),
(5, 'We offer free classes.'),
(6, 'All Skills navigator centers offer standardized toolkits and equipments'),
(7, 'We provide free student kits');

-- --------------------------------------------------------

--
-- Table structure for table `working_model_parent`
--

CREATE TABLE IF NOT EXISTS `working_model_parent` (
  `id` int(50) NOT NULL,
  `point_1` varchar(100) NOT NULL,
  `point_2` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `working_model_parent`
--

INSERT INTO `working_model_parent` (`id`, `point_1`, `point_2`) VALUES
(1, 'Norms, Policies & Monitoring', 'Coordination with NSDC, SSC'),
(2, 'Funding', 'Course Material'),
(3, 'Qualification Packs & National Occupation Standards', 'Marketing Strategy'),
(4, 'Complete Assessment Process', 'Logistics & Coordination'),
(5, '', 'Placement Assistance'),
(6, '', 'Infrastructure, Staff & Faculty'),
(7, '', 'Local Promotion & Enrollments'),
(8, '', 'Training & Placement');

-- --------------------------------------------------------

--
-- Table structure for table `working_skills_nav`
--

CREATE TABLE IF NOT EXISTS `working_skills_nav` (
  `id` int(11) NOT NULL,
  `point` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `working_skills_nav`
--

INSERT INTO `working_skills_nav` (`id`, `point`) VALUES
(1, 'Coordination with NSDC, SSC'),
(2, 'Course Material'),
(3, 'Marketing Strategy'),
(4, 'Logistics & Coordination'),
(5, 'Placement Assistance'),
(6, 'Infrastructure, Staff & Faculty'),
(7, 'Local Promotion & Enrollments'),
(8, 'Training & Placement');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `about_courses`
--
ALTER TABLE `about_courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admission_requirements`
--
ALTER TABLE `admission_requirements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses_offered`
--
ALTER TABLE `courses_offered`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `infrastructure_requirements`
--
ALTER TABLE `infrastructure_requirements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nsdc_ssc`
--
ALTER TABLE `nsdc_ssc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `placement_process`
--
ALTER TABLE `placement_process`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pmkvy`
--
ALTER TABLE `pmkvy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pmkvy_charecteristics`
--
ALTER TABLE `pmkvy_charecteristics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pmkvy_char_points`
--
ALTER TABLE `pmkvy_char_points`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pmkvy_description`
--
ALTER TABLE `pmkvy_description`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quotes`
--
ALTER TABLE `quotes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skills_navigator`
--
ALTER TABLE `skills_navigator`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `what_we_do`
--
ALTER TABLE `what_we_do`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `why_skills_nav`
--
ALTER TABLE `why_skills_nav`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `why_skills_nav_detail`
--
ALTER TABLE `why_skills_nav_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `why_skills_nav_points`
--
ALTER TABLE `why_skills_nav_points`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `working_model_parent`
--
ALTER TABLE `working_model_parent`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `working_skills_nav`
--
ALTER TABLE `working_skills_nav`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `about_courses`
--
ALTER TABLE `about_courses`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `admission_requirements`
--
ALTER TABLE `admission_requirements`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `courses_offered`
--
ALTER TABLE `courses_offered`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `infrastructure_requirements`
--
ALTER TABLE `infrastructure_requirements`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `placement_process`
--
ALTER TABLE `placement_process`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `pmkvy`
--
ALTER TABLE `pmkvy`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `pmkvy_charecteristics`
--
ALTER TABLE `pmkvy_charecteristics`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `pmkvy_char_points`
--
ALTER TABLE `pmkvy_char_points`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `pmkvy_description`
--
ALTER TABLE `pmkvy_description`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `skills_navigator`
--
ALTER TABLE `skills_navigator`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `what_we_do`
--
ALTER TABLE `what_we_do`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `why_skills_nav`
--
ALTER TABLE `why_skills_nav`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `why_skills_nav_detail`
--
ALTER TABLE `why_skills_nav_detail`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `why_skills_nav_points`
--
ALTER TABLE `why_skills_nav_points`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `working_model_parent`
--
ALTER TABLE `working_model_parent`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `working_skills_nav`
--
ALTER TABLE `working_skills_nav`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
