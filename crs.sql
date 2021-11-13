-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 13, 2021 at 10:21 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crs`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`) VALUES
(1, 'admin', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `apply_job_post`
--

CREATE TABLE `apply_job_post` (
  `id_apply` int(11) NOT NULL,
  `id_jobpost` int(11) NOT NULL,
  `id_company` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `apply_job_post`
--

INSERT INTO `apply_job_post` (`id_apply`, `id_jobpost`, `id_company`, `id_user`, `status`) VALUES
(1, 11, 4, 8, 0),
(2, 7, 2, 8, 0),
(3, 1, 1, 8, 0),
(4, 23, 10, 8, 1),
(5, 60, 15, 15, 0);

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `id_company` int(11) NOT NULL,
  `companyname` varchar(255) NOT NULL,
  `headofficecity` varchar(255) NOT NULL,
  `contactno` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL,
  `companytype` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id_company`, `companyname`, `headofficecity`, `contactno`, `website`, `companytype`, `email`, `password`, `createdAt`) VALUES
(13, 'Reliance Jio ', 'Mumbai', '2266568487', 'www.jio.com', 'IT BASED', 'jio123@jio.com', 'NzE1NTAxYjQ3MmZjYjI3YTdiNDVhNGUyYjE0NjliZGI=', '2021-11-10 06:44:08'),
(12, 'Google', 'Bangaluru', '2266568483', 'www.google.com', 'IT BASED', 'google123@google.com', 'M2Y3MDFkZjRkZmFlZTgzYmJhMDBmOTM5YjIxMzhmOGI=', '2021-11-10 06:34:31'),
(11, 'Amazon', 'Bangaluru', '2266568488', 'www.amazon.in', 'Product Based', 'amazon123@amazon.com', 'NWYwZTUzNDM1MTU1YjBiYmQ0MThmMjZhZmM2ZGNjNTY=', '2021-11-10 06:26:59'),
(10, 'HDFC', 'Mumbai', '2266568482', 'www.hdfcbank.com', 'Banking', 'hdfc123@hdfc.com', 'ZDZhMTAyNzFjMGNjNTQ4YmZjNTQyYjJjMTAzZjQ2M2I=', '2021-11-10 06:11:09'),
(9, 'Wipro', 'Pune', '2266568485', 'www.wipro.com', 'Indian multinational corporation', 'wipro123@wipro.com', 'M2FhNjU4MzU2MmY4OTU0ZGZmZGQxYjEyYTY5MGE4Zjg=', '2021-11-10 06:03:45'),
(8, 'TCS', 'Pune', '2266568484', 'www.tcs.com', 'IT Company', 'tcs123@tcs.com', 'OWQzYWEwYTYyYTE1NzhkMWVkMTFjZjA4NDUyMGVlODY=', '2021-11-10 05:49:58'),
(7, 'VIT Pune', 'Pune', '9890688796', 'www.vitpune.in', 'College', 'vitpune@vit.in', 'ZDNlNWM1YmFlNmFmYWJhZjM5NmUxYmZlZmIxMGE3OWQ=', '2021-10-28 14:40:53'),
(14, 'Byju\'s', 'Bangaluru', '22665684833', 'www.byjus.com', 'Education', 'byjus123@byjus.com', 'MWUxZDAxNTNiZDc2YWFkMTA2YzMzM2VhY2M4MjBmOTg=', '2021-11-10 06:50:04'),
(15, 'Microsoft', 'USA', '2266568481', 'www.microsoft.com', 'IT BASED', 'microsoft123@microsoft.com', 'YzU5MGEyYmZjMWZkNzA1MTllZGI0NDBhZTBkN2UxZTM=', '2021-11-10 07:00:03');

-- --------------------------------------------------------

--
-- Table structure for table `job_post`
--

CREATE TABLE `job_post` (
  `id_jobpost` int(11) NOT NULL,
  `id_company` int(11) NOT NULL,
  `jobtitle` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `minimumsalary` varchar(255) NOT NULL,
  `maximumsalary` varchar(255) NOT NULL,
  `experience` varchar(255) NOT NULL,
  `qualification` varchar(255) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `job_post`
--

INSERT INTO `job_post` (`id_jobpost`, `id_company`, `jobtitle`, `description`, `minimumsalary`, `maximumsalary`, `experience`, `qualification`, `createdAt`) VALUES
(1, 1, 'Back Office Operations', 'TCS BPS Mega Hiring for Back office operations(Non Voice) @ Mumbai, Interviews on 25th April 2021\r\nInterview Location : Raj Palace, Worli, Mumbai.', '15000', '20000', 'Fresher', 'Any Graduate', '2021-10-17 17:28:48'),
(2, 1, 'Customer Service Advisor', 'Opportunity is knocking at your door steps. TCS gives you an opportunity to work with one of the leading BPO in India.', '10000', '15000', 'Fresher', 'HSC', '2021-10-17 17:33:58'),
(3, 2, 'Sales Managers', 'Should have worked in to the MSME Products.- Individual Business Loans. Good understanding of self-employed customer \r\nExposure in local market.', '23000', '25000', 'Fresher', 'Any Graduate', '2021-10-17 17:36:50'),
(4, 5, 'Deputy Manager', 'If you are interested in joining a purpose driven community that is dedicated to creating an ambitious and inclusive workplace, join our company that you can be proud to be a part of!!', '10000', '12000', 'Fresher', 'Any Graduate', '2021-10-17 17:39:03'),
(5, 3, 'Software Developer', 'Position Overview: As a Lead, you will interface with key stakeholders and apply your technical proficiency across different stages of the Software Development Life Cycle.', '40000', '43000', '5', 'MCA or B.Tech', '2021-10-17 17:40:53'),
(6, 4, 'Chat Process', 'Hi, Greeting from Reliance Jio. Currently we are hiring for Social Media / Chat / Email.', '7500', '10000', 'Fresher', 'HSC or Any Graduate', '2021-10-17 17:43:00'),
(7, 2, 'Area Collection Manager', 'He/ She will be responsible for collection efficiency and cost of collections for the assigned area.\r\nThe incumbent will be responsible to track & control the delinquency of the area.', '60000', '62000', 'Fresher', 'CS', '2021-10-17 17:45:17'),
(8, 1, 'Senior Level Account Management ', 'Responsible for the enterprise sales in TATA Group of Companies Preferably TCS , TCL ,TATA Steel, TATA Motors,etc.\r\nEstablish stable relationship with the Customers Senior and middle management for technical and commercial decisions.', '70000', '80000', '5', 'CA or CS', '2021-10-17 17:50:34'),
(9, 5, 'Sales Executive', 'Frame Selection \r\nBe familiar with all of the optical frame ranges we carry and be able to explain the different features and benefits, as well as the brand values.', '30000', '40000', '3', 'Any Graduate', '2021-10-17 17:52:06'),
(10, 3, 'Sales Head', 'Data Infosys takes pride in its employees. These are the values that inspire us, as we help out our clients to accelerate software development programs.', '50000', '60000', 'Fresher', 'MBA', '2021-10-17 17:53:19'),
(11, 4, 'HR Executive', 'End to end recruitment \r\nManpower search through various modes of recruitment viz. job portals, references, head-hunting, mapping. \r\nScreening and scheduling candidates with stakeholders.', '70000', '80000', '5', 'MBA', '2021-10-17 17:54:41'),
(12, 8, 'Software Engineer', 'The Tools & Software Team is looking for an excellent software engineer or developer who can contribute to our in-house quality assessment project of our TTS product.\r\nThis project showcases the quality of Cerence TTS voices and displays the benchmark with the competition.\r\nReports generated from this project are used by the Product and Marketing team to showcase the quality of our TTS voices and our standings with competition.\r\nThis project also used to showcase the quality of our new GEEnE voices.\r\nThe selected candidate will be working on development, testing and documentation in an agile environment.\r\nHe/she will work with our Europe-based team and will be trained on the best practices to develop and maintain high-level reports.', '600000', '900000', '0-2', 'HSC', '2021-11-10 05:54:49'),
(13, 8, 'Area Collection Manager', 'He/ She will be responsible for collection efficiency and cost of collections for the assigned area. The incumbent will be responsible to track & control the delinquency of the area.', '60000', '80000', '3', 'CS', '2021-11-10 05:56:40'),
(14, 8, 'Back Office Operations', 'TCS BPS Mega Hiring for Back office operations(Non Voice) @ Mumbai, Interviews on 25th April 2021 Interview Location : Raj Palace, Worli, Mumbai.', '100000', '500000', 'Fresher', 'Any graduate', '2021-11-10 05:57:35'),
(17, 8, 'Python Developer', 'We are looking for an expert in Python to deliver world class software in Agile environment.\r\nYou will be involved in every aspect of product development be it simple feature development or making architectural changes.\r\nYou should have experience in full software development life cycle, good problem-solving skills, object-oriented programming, database design, integration, and agile methodologies.', '30000', '50000', 'Fresher', 'MCA or B.tech', '2021-11-10 06:01:42'),
(16, 8, 'Urgent Opening For Software Engineer- Backend Development', 'Participate in planning, designing and development of various features of the platform\r\nContribute by writing clean, high quality, high performance and maintainable code\r\nContribute by adding unit tests to the platform to improve the code quality\r\nParticipate in code review process\r\nContribute to the platform\'s stability and performance improvement\r\nDebugging and fixing the various problems occurring in the platform\r\nContribute by developing scripts for routine and complex tasks when needed\r\nContribute to team by mentoring the team members.\r\n', '200000', '400000', 'Fresher', 'HSC or Any Graduate', '2021-11-10 06:00:55'),
(18, 9, 'Chat Process', 'Hi, Greeting from wipro. Currently we are hiring for Social Media / Chat / Email.', '20000', '60000', '3', 'CA or CS', '2021-11-10 06:04:57'),
(19, 9, 'PYTHON PROGRAMMING LANGUAGE APPLICATION DEVELOPER', 'Would be responsible for developing , troubleshooting manage project programs written in Python 2 : Code, test and debug programs according to Python best practices 3: Communicate with a team in order to coordinate and document application development and testing', '200000', '500000', '3', 'MCA or B.tech', '2021-11-10 06:05:49'),
(20, 9, 'DevOps Engineer', 'As an entry-level engineer, you will get to :\r\n- Quickly learn the latest technologies across Web Apps, Cloud/DevOps, and Data engineering.\r\n- Work with some excellent engineers and mentors, and peers to become an expert in your area of work.\r\n- Learn the best engineering practices.', '300000', '600000', 'Fresher', 'Btech', '2021-11-10 06:07:42'),
(21, 9, 'HR Executive', 'End to end recruitment Manpower search through various modes of recruitment viz. job portals, references, head-hunting, mapping. Screening and scheduling candidates with stakeholders.', '700000', '900000', '5', 'MBA', '2021-11-10 06:08:17'),
(22, 9, 'Sales Executive', 'Frame Selection Be familiar with all of the optical frame ranges we carry and be able to explain the different features and benefits, as well as the brand values.', '600000', '120000', '3', 'CA or CS', '2021-11-10 06:09:09'),
(23, 10, '	Future Banker', 'India’s leading Private sector bank i.e. HDFC Bank currently hiring for Future Banker – HDFC Bank', '300000', '400000', 'Fresher', 'HSC', '2021-11-10 06:14:16'),
(24, 10, 'Branch Manager ', 'A branch manager is an employee who oversees the operations of a branch of a bank or financial institution. The branch manager\'s responsibilities include managing resources and staff, developing and attaining sales goals, delivering customer service, and growing the location\'s revenues.', '800000', '1200000', '5', 'Btech', '2021-11-10 06:16:56'),
(25, 10, 'Technical Appraiser', 'Job Description\r\nTechnical\r\n\r\n1.    Appraisal - Assessing Market Value of properties offered as security for Loan - Land & Building. \r\n2.    Site Visits -Visiting Properties to assess valuation and progress of work.\r\n3.    Documentation -Verification of documents like Building approvals, Plans, Estimates etc, to ensure compliance with applicable building rules and other applicable regulations.\r\n4.    Recording of Site observations and recommending loan amount based on assessment made based on documents and site observations.\r\n5.    Relationship Management -With customer with the channel partners.\r\n6.    Qualifications - Fresh/experienced B Tech /BE (Civil Engg)    having good and consistent academic record (Min 60% marks) and good communication skills in English and Malayalam.\r\n', '50000', '100000', '0-2', 'CS', '2021-11-10 06:18:26'),
(26, 10, 'Manager Audit & Regulatory Compliance – Credit Risk', 'Job Description\r\n- Assess credit worthiness of the self employed / salaried customers.\r\n- Customer interaction vis a vis loan appraisal and loan servicing requirements.\r\n- Meeting customers and doing personal discussion. Suggesting optimal solutions to customers needs.\r\n- Business visit and Verification.\r\n- Collection and verification of documents.\r\n- Recommending the proposal for approval.\r\n- Planning and execution of ways to source new and incremental business.', '600000', '800000', '0-2', 'CA or CS', '2021-11-10 06:20:37'),
(27, 10, 'Retainer - Data and Operations', 'Work on financial data gathering/enrichment and being up-to-date on market trends in financial data, content and products.\r\nExtract required data set from input / source document related to assigned tasks into required output template / applications.\r\nDeliver on predefined team targets including delivering outcomes with high quality and excellence.\r\nExplore opportunities and provide ideas to improve the current processes using emerging technologies or lean tools\r\nCollaborate effectively with technical and non-technical global stakeholders', '400000', '600000', 'Fresher', 'CA or CS', '2021-11-10 06:21:45'),
(28, 10, 'Associate Business Analyst ', 'Major task entails undertaking data collection from multiple sources, including primary, secondary, internal, and external sources to generate relevant data / report for analysis.\r\nBasic data analysis skills to identify useful trends & provide relevant information to project owners.\r\nWork with Stakeholders', '60000', '70000', 'Fresher', 'HSC or Any Graduate', '2021-11-10 06:23:33'),
(29, 11, 'Business Intelligence Engineer II', 'Amazon is known to be a metrics driven culture. This role will be responsible for answering questions about the state of our business, generating new insights to help guide the strategic direction of the ERC, building and maintaining metrics and analysis for all levels of our organization, integrating new data sources into a team-specific Redshift cluster, and ensuring data cleanliness and accuracy. This role will help automate and centralize ETL pipelines in AWS tools by working closely with other technical partners and serve as a subject matter expert for statistics and modeling.', '600000', '800000', '0-2', 'Any Graduate', '2021-11-10 06:27:51'),
(30, 11, 'Data Engineer I', 'Alexa Smart Home is focused on making Alexa the voice-activated user interface for the home. Alexa helps fulfill many customer needs, from home security and entertainment to providing information and shopping – all using just your voice. Alexa works with many smart home devices – customers can ask her to switch on a lamp, turn on the fan, dim the lights, or increase the temperature. We are evolving Alexa into an intelligent, indispensable companion that automates daily routines, simplifies interaction with appliances and electronics, and alerts when something unusual is detected.', '300000', '500000', '0-2', 'HSC', '2021-11-10 06:28:29'),
(31, 11, 'Sr. Business Intelligence Engineer', 'Amazon Advertising operates at the intersection of eCommerce and advertising, offering a rich array of digital display advertising solutions with the goal of helping our customers find and discover anything they want to buy. We help advertisers reach Amazon customers on the Amazon owned and operated sites, on other high-quality sites across the web, and on millions of tablets, mobile devices, and connected TVs. We start with the customer and work backwards in everything we do, including advertising', '1000000', '1500000', '0-2', 'MCA or B.Tech', '2021-11-10 06:29:21'),
(32, 11, 'Sales Operations', 'The Sales Strategy and Enablement (S&E) team under Global Sales Operations shapes strategies for advertising sales teams, provides actionable insights at all levels of the Sales organization, builds reliable data foundations for advertiser accounts, improves CRM experiences for Sales users, and provides BI solutions across all aspects of Sales Operations, chartered with the objectives of improving sales productivity and operational effectiveness.\r\nWe are looking to hire a talented Senior Business Intelligence Engineer for our Global Sales Analytics function of S&E. The Senior Business Intelligence Engineer will play a pivotal role in defining the Advertising Sales team structure and go-to-market strategy. He/she will leverage 1P and 3P data sources as well as qualitative inputs from Sales leaders to quantify market opportunities, define customer segments, and generate account coverage recommendations. The candidate will partner with Sales and Finance leaders to propose creative solutions to organize and allocate our Sales resources internally to optimize for account growth and sales productivity.', '120000', '140000', '0-2', 'HSC or Any Graduate', '2021-11-10 06:30:08'),
(33, 11, 'Business Intelligence Engineer', 'Amazon’s Alexa is a cloud-based voice service that powers Amazon’s groundbreaking voice-powered devices Echo, Dot, Tap, and Echo Show. These devices are part of Amazon’s vision to build a computer in the cloud that is completely controlled by your voice. Alexa Audio is a key Alexa vertical including Music, Radio, Podcast, Books, and the Audio category custom skills, focused on delivering magical experiences that drive engagement with Alexa.', '200000', '500000', '0-2', 'CS', '2021-11-10 06:30:43'),
(34, 11, 'Manager, Business Intelligence', 'We are looking for a seasoned BI Manager to lead the Prime Finance BI team! Prime Global Finance enjoys a unique vantage point into everything happening within Amazon. This role will lead a growing team of BI and data engineers who are responsible for managing and optimizing the data stores and generating data insights across two of the most impactful and high visibility areas within Amazon: Prime and Lifecycle Engagement.', '300000', '600000', '0-2', 'CA or CS', '2021-11-10 06:31:27'),
(35, 11, 'Data Engineer', 'Do you want to be a leader in the team that takes Transportation and Retail models to the next generation? Do you have a solid analytical thinking, metrics driven decision making and want to solve problems with solutions that will meet the growing worldwide need? Then Transportation is the team for you. We are looking for top notch Data Engineers to be part of our world class Business Intelligence for Transportation team.', '400000', '700000', '0-2', 'MBA', '2021-11-10 06:32:07'),
(36, 11, 'Business Analyst', 'Working in a dynamic environment, you will be responsible for automating dashboards, monitoring key success metrics, managing WBR reports, identifying problem areas and business challenges and collaboratively shaping solutions with Amazon Pay teams to help optimize on the platform. The successful candidate has a passion for extracting actionable insights from data. The candidate needs to innovate, and quickly become a subject matter expert to assess business performance across different Amazon Pay areas. The candidate should have significant experience working with automation, analyzing data, identifying trends, extracting conclusions, and presenting findings in a simple and clear manner using data across various data marts, and align focus on Amazon’s strategic needs. The candidate should enjoy problem solving and is proficient in VBA and other automation tools.', '600000', '1200000', '0-2', 'Btech', '2021-11-10 06:32:43'),
(37, 12, 'Program Manager, Quality and Continuous Improvement, YouTube', 'As Program Manager, you will help steer the quality assurance program to ensure quality in vendor operations. You’ll set the standards for operational quality and processes, ensure that all vendor sites meet and exceed those goals. Partnering with Operations experts, you’ll dive into the operations metrics and continuously fine-tune the operational framework to improve user experience and quality of the results.\r\n\r\nNote that in this role, you may be exposed to graphic, controversial, and sometimes offensive video content during team escalations in line with YouTube’s Community Guidelines.', '800000', '1400000', '3', 'Any Graduate', '2021-11-10 06:36:32'),
(38, 12, 'Small Business Field Sales Representative, Google Fiber', 'As a Small Business Field Sales Representative (FSR), your primary responsibility is to grow Google Fiber’s market share across the small business customer segment in your respective territory by offering commercial internet and voice services to small businesses. You will build owner/decision maker relationships and align our offerings to the customers’ needs. Additionally, you will interact with cross-functional teams and leverage the right resources to maximize the best customer outcomes.', '300000', '900000', '3', 'HSC', '2021-11-10 06:37:10'),
(40, 12, 'Financial Analyst, Android Monetization', 'Financial Analysts ensure that Google makes sound financial decisions. As a Financial Analyst, your work, whether it\'s modeling business scenarios or tracking performance metrics, is used by our leaders to make strategic company decisions. Working on multiple projects at a time, you are focused on the details while finding creative ways to take on big picture challenges.', '600000', '1200000', '3', 'HSC or Any Graduate', '2021-11-10 06:38:59'),
(41, 12, 'Strategy and Operations Lead', 'The Strategy and Operations team provides business critical insights using analytics, ensures cross functional alignment of goals and execution, and helps teams drive strategic partnerships and new initiatives forward. We stay focused on aligning the highest-level company priorities with strong day-to-day operations, and help evolve early stage ideas into future-growth initiatives. In this role, you will be part of the strategy team supporting the lead for GTECH Professional Services APAC. You will also work in close partnership with the GTECH Strategy and Operations colleagues in other regions.', '1300000', '1500000', '3', 'CS', '2021-11-10 06:39:49'),
(42, 12, 'Data Analyst', 'The Ads Finance team partners with Ads leadership across Product, Engineering, and Sales to drive ads decisions with financial stewardship. We are strategic partners, driving impact through analysis grounded in hard data. We bring an independent point of view and bias to action on a collaborative approach, all while focusing on the development of our people. In this role, you will work closely with the Legal, Economics, Regulatory Affairs Finance, and Product Finance teams to determine the optimal approach of conducting complex finance data analyses.', '600000', '1300000', '3', 'CA or CS', '2021-11-10 06:40:27'),
(43, 12, 'Head of Analytics and Revenue, Media and Entertainment', 'The Media and Entertainment (ME&T) strategy: Enable the ME&T ecosystem of partners to drive more business growth and yield by executing against our strategy of driving adoption of Google’s full stack promote side technology and layering our technology into our partners\' ad environments.\r\n\r\nAs the Head of Analytics and Revenue, you will develop and coach a high-performing partner specialist team that uses consultative business development skills to understand partner needs and deliver measurable results. You will also work with the rest of the leadership team to set the ads product strategy that will drive the day-to-day operations of the business.', '1600000', '2100000', '3', 'MBA', '2021-11-10 06:41:06'),
(39, 12, 'Python Developer', 'Meet or exceed sales targets within a territory by prospecting to new businesses and account management of existing customers\r\nGenerate new leads by actively prospecting, cold-calling, and developing relationships with businesses and business partners\r\nManage and continuously grow a healthy sales pipeline and drive new business growth streams\r\nMaintain accurate and timely updates to the CRM platform\r\nDisplay a solid knowledge of Google Fiber’s network and technical deployment. Communicate the Google Fiber value proposition to commercial businesses', '1500000', '1700000', '3', 'MCA or B.Tech', '2021-11-10 06:37:54'),
(44, 12, 'Policy Lead, Trust and Safety', 'Trust & Safety team members are tasked with identifying and taking on the biggest problems that challenge the safety and integrity of our products. They use technical know-how, excellent problem-solving skills, user insights, and proactive communication to protect users and our partners from abuse across Google products like Search, Maps, Gmail, and Google Ads. On this team, you\'re a big-picture thinker and strategic team-player with a passion for doing what’s right.', '1000000', '1200000', '3', 'Btech', '2021-11-10 06:41:45'),
(45, 13, 'Jio Point Assistant Manager ', '1. Ensure a delightful customer experience at store\r\n2. Acquire new customers\r\n3. Provide post sales- service to walk- in customers\r\n4. Achieve acquisition & revenue targets\r\n5. Manage systems & store operations\r\n6. Ensure stock availability in store', '300000', '600000', '5', 'Any Graduate', '2021-11-10 06:45:12'),
(46, 13, 'Customer Service Advisor', 'Hi, Greeting from Reliance Jio. Currently we are hiring for Social Media / Chat / Email.', '400000', '600000', '5', 'HSC', '2021-11-10 06:47:42'),
(47, 14, 'Business Developer', 'The Selected Candidates will begin in an individual contributor’s role, working in a team of go-getters to help spread the Byju’s way of Learning in your city. They would be showcasing the unique Byju’s way of Learning to students and parents and will be responsible for mentoring and sales in their designated zone.', '300000', '600000', '5', 'MCA or B.Tech', '2021-11-10 06:51:07'),
(48, 14, 'SEO Manager', 'Develop and execute successful SEO strategies\r\n• SEO Audit – Technical audit to understand the crawlability, indexing issues.\r\n• Research more on new ideas and execution.\r\n• Manage team of SEO Specialists / Analyst.\r\n• Conduct keyword research to guide content team.\r\n• Review technical SEO issues and recommend fixes', '1200000', '1500000', '5', 'HSC or Any Graduate', '2021-11-10 06:52:15'),
(49, 14, 'Content Writer', ' Conducting in-depth research on subject-related topics in order to develop original content.\r\n• Developing content for company Question and solutions, blogs and articles.\r\n• Assisting the digital marketing team in developing content Q & A and solutions.\r\n• Reviewing content for errors and inconsistencies.\r\n• Editing and polishing existing content to improve readability', '40000', '60000', '5', 'CS', '2021-11-10 06:52:51'),
(50, 14, 'Business Development Associate', 'All selected candidates will be part of a two or three-month training process under the Business Development Trainee (BDT) profile at a monthly stipend of Rs 25,000. On successful completion of training, candidates will be promoted to the role of Business Development Associates (BDA)', '50000', '85000', '5', 'CA or CS', '2021-11-10 06:54:13'),
(51, 14, 'Quality Analyst', 'Performs call monitoring according to monitoring formats & quality standards and provides trend data to the management\r\nUses quality monitoring data management system to compile and track performance at team and individual level\r\nIdentify root cause of defects and find areas of improvements in the process being audited. Provides ideas for process improvements to enhance process efficiency, quality and sales \r\nRespond to stakeholders with guidance and flags any updates to Lead/Manager\r\nParticipates in customer listening programs to identify customer needs and expectations\r\nEnsure compliance to laid down policies, procedures and guidelines', '300000', '500000', '5', 'MBA', '2021-11-10 06:55:15'),
(52, 14, 'Assistant Manager - Inventory Management', 'You will start your journey at BYJU S as an individual contributor working in a Supply Chain Department. As an associate, the critical part of performance assessment is to deliver timely, accurate and professional service to all its customers. This vital position requires an action-oriented, flexible problem-solver who will coordinate with internal teams in expediting across multiple teams. Associates communicate with internal teams primarily through mail, chat and phone and utilize a variety of software tools to navigate orders, research and review policies and communicate effective solutions in a fun and fast-paced environment.\r\nSector: This role is in team of BYJU s Corporate Operations in one of the fastest growing sectors Ed-Tech. There is a huge scope of learning and implementing new ideas as the sector is growing and still not matured.', '500000', '950000', '5', 'Btech', '2021-11-10 06:55:55'),
(53, 15, 'Business Operations Associate', 'The Annotation Specialist produces high quality annotations which train and improve Microsoft’s AI products and services. The Annotation Specialist will use language, cultural knowledge, and computer skills to capture the human “ground truth”. In this role you will be the foundation of the Microsoft teams responsible for driving machine learning and high AI technology, such as, AI assistance for people’s daily life, meeting captioning, and more. Join our team and use your background and expertise to continue delivering value to Microsoft.', '450000', '700000', 'Fresher', 'Any Graduate', '2021-11-10 07:01:28'),
(54, 15, 'FP&A Lead', 'Empower every person and organization on the planet to achieve more. That’s what inspires us, drives our work and pushes us to challenge the status quo every day. Through our Cloud-first strategy, we strive to deliver solutions that are optimized for the world and enable customers to drive their business more successfully. Microsoft’s Margin Strategy and Investment Optimization (MSIO) team is an exciting and fast-evolving finance team at the forefront of Microsoft’s Cloud-first strategy.', '250000', '450000', 'Fresher', 'HSC', '2021-11-10 07:02:12'),
(55, 15, 'Business Administrator', 'Rhythm Of Business: Rhythms Of Business are typically driven in consultation with the team leadership and include all hands, townhalls, AMA and technical reviews of various varieties\r\nBusiness Operations : Proactively manage budget and accounting processes for the team, anticipate procurement needs, vendor management all while working in a rich environment with a variety of support teams RE&F, HR, Finance, etc. Identify, recommend, and implement solutions to departmental operations and process issues. Keep abreast of changes in policies and ensure operational hygiene and compliance to policies by reviewing and providing information to the teams', '600000', '850000', 'Fresher', 'MCA or B.Tech', '2021-11-10 07:02:53'),
(56, 15, 'TALENT SOURCER', 'Establish a proactive recruitment and targeted talent acquisition program to build talent pools in line with our succession planning and talent review programs.\r\nBuild, own and nurture candidate relationships, staying connected right through to the point of hire.', '350000', '500000', 'Fresher', 'HSC or Any Graduate', '2021-11-10 07:03:30'),
(57, 15, 'Consulting Project Management', 'The Delivery Maturity Program Manager is part of Delivery Excellence Services (DES) group in the Business Excellence and Operations (BEO) organization. This role is pivotal for executing on the delivery excellence strategy and for successfully driving Modern Delivery and Delivery Maturity. This role will be a key part of the Delivery Maturity Function accountable for\r\nStrategizing a multi-year roadmap for Delivery Maturity\r\nContinuously evaluating and representing the Function with Senior Leadership and other Directors', '45000', '60000', 'Fresher', 'CS', '2021-11-10 07:04:09'),
(58, 15, 'Remote Project Management', 'A Remote Project Manager is responsible for providing project management support from offshore to engagements using Dynamics 365 and related technologies. A Remote Project Manager works in tandem with Project Managers in different time zones performing project governance across multiple engagements. The role provides support in critical areas of overall project management including management of financials, resourcing, and help identify, pursue, and close project risks/issues. ', '200000', '550000', 'Fresher', 'CA or CS', '2021-11-10 07:04:43'),
(59, 15, 'Cloud Network Engineering', 'Microsoft is an equal opportunity employer. All qualified applicants will receive consideration for employment without regard to age, ancestry, color, family or medical care leave, gender identity or expression, genetic information, marital status, medical condition, national origin, physical or mental disability, political affiliation, protected veteran status, race, religion, sex (including pregnancy), sexual orientation, or any other characteristic protected by applicable laws, regulations and ordinances.', '650000', '800000', 'Fresher', 'MBA', '2021-11-10 07:05:26'),
(60, 15, 'Associate Consultant', 'The Business Applications Practice within Industry Solutions helps customers maximize their investment in Microsoft Dynamics 365 solutions and the full portfolio of Microsoft Products through accelerated implementation and adoption. The Microsoft Business Applications Practice team is part of a global organization of exceptional people who lead and serve our customers and partners as they realize their full potential through software and services.\r\n', '750000', '900000', 'Fresher', 'Btech', '2021-11-10 07:06:03');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` text DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `contactno` varchar(255) DEFAULT NULL,
  `qualification` varchar(255) DEFAULT NULL,
  `stream` varchar(255) DEFAULT NULL,
  `passingyear` varchar(255) DEFAULT NULL,
  `dob` varchar(255) DEFAULT NULL,
  `age` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `resume` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `firstname`, `lastname`, `email`, `password`, `address`, `city`, `state`, `contactno`, `qualification`, `stream`, `passingyear`, `dob`, `age`, `designation`, `resume`) VALUES
(15, 'Vikrant', 'Patil', 'vikrant@gmail.com', 'Y2Y4NDk3MDY4M2Y0MGJlNGZkYjY0N2QwNjcxZjU4NDk=', 'Pune', 'Pune', 'Maharashtra', '896764344334', 'Btech', 'Computer Science', '2022-12-02', '1998-02-11', '23', 'jhd', '618e060631ffa.pdf'),
(13, 'Pranay', 'Shridhar', 'pranay@gmail.com', 'ZTE2YWE5NmMwODYyMzAxOGYzMGQ5YjllMjYyM2NhMmU=', 'Pune', 'Pune', 'Maharashtra', '1463647788', 'Btech', 'Computer Science', '2022-02-02', '1998-06-06', '22', 'abc', '618e053dba023.pdf'),
(14, 'Mitanshu', 'Bhoot', 'mitanshu@gmail.com', 'YTlmOGE5NTZjMDk5Njc0MjJmYmVhYmVhMGM0ODU1ZTE=', 'Pune', 'Pune', 'Maharshtra', '684232366', 'Btech', 'Computer Science', '2022-02-11', '1998-06-22', '23', 'abcs', '618e05a546890.pdf'),
(8, 'Preeti', 'Rajesh', 'preetirajesh400@gmail.com', 'YTY1Mzk3NjBlODgxYTNiNDQ4OWUzZDVjNTFiN2FhN2I=', 'mumbai maharashtra', '', '', '9890688796', 'Btech', 'Computer', '2022-11-03', '1998-02-04', '22', '', '61792ccd1a371.pdf');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `apply_job_post`
--
ALTER TABLE `apply_job_post`
  ADD PRIMARY KEY (`id_apply`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id_company`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `job_post`
--
ALTER TABLE `job_post`
  ADD PRIMARY KEY (`id_jobpost`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `apply_job_post`
--
ALTER TABLE `apply_job_post`
  MODIFY `id_apply` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id_company` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `job_post`
--
ALTER TABLE `job_post`
  MODIFY `id_jobpost` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
