-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 12, 2025 at 04:57 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecometrics`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `state` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `name`, `email`, `phone`, `state`, `city`, `message`, `created_at`) VALUES
(2, 'Rajaram sharma', 'sharmarajaram18000@gmail.com', '9819647784', 'dfhj', 'janakpur', 'xn', '2025-01-31 11:01:06'),
(3, 'Rajaram sharma', 'sharmarajaram18000@gmail.com', '9819647784', 'dfhj', 'janakpur', ',mn', '2025-01-31 11:01:20');

-- --------------------------------------------------------

--
-- Table structure for table `distance_data`
--

CREATE TABLE `distance_data` (
  `id` int(11) NOT NULL,
  `distance` float NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `distance_data`
--

INSERT INTO `distance_data` (`id`, `distance`, `timestamp`) VALUES
(78, 813, '2025-01-30 18:53:08'),
(79, 37, '2025-01-30 18:53:13'),
(80, 813, '2025-01-30 18:53:19'),
(81, 813, '2025-01-30 18:53:24'),
(82, 29, '2025-01-30 18:53:30'),
(83, 30, '2025-01-30 18:53:35'),
(84, 29, '2025-01-30 18:53:41'),
(85, 30, '2025-01-30 18:53:46'),
(86, 37, '2025-01-30 18:53:52'),
(87, 37, '2025-01-30 18:53:57'),
(88, 294, '2025-01-30 18:54:03');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `description`, `url`, `image`, `published_at`) VALUES
(1, 'How Invasive Plants Are Fueling California’s Wildfire Crisis', 'Non-native grasses and eucalyptus trees brought to California centuries ago for agriculture and landscaping have reshaped the state’s fire dynamics.', 'https://www.wired.com/story/how-invasive-plants-are-fueling-californias-wildfire-crisis/', 'https://media.wired.com/photos/6789927848630cbedf000855/191:100/w_1280,c_limit/eucalyptus-fires-sci-520559140.jpg', '2025-01-21 13:39:34'),
(2, 'Your pictures on the theme of \'agriculture\'', 'A selection of pictures sent in by our readers on the theme of agriculture.', 'https://www.bbc.com/news/articles/cnv3vjr783jo', 'https://ichef.bbci.co.uk/news/1024/branded_news/be59/live/d15c6ed0-cde7-11ef-9fd6-0be88a764111.jpg', '2025-01-12 01:56:33'),
(3, 'The Great Salt Lake Is Dying, But These Scientists Have a Solution', 'The Great Salt Lake is rapidly losing water, and new research indicates agriculture is to blame.', 'https://gizmodo.com/the-great-salt-lake-is-dying-these-scientists-have-a-solution-2000547091', 'https://gizmodo.com/app/uploads/2025/01/great-salt-lake-drought.jpg', '2025-01-11 17:00:47'),
(4, 'USDA report finds Boar\'s Head listeria outbreak was due to poor sanitation practices', 'A report released by the Department of Agriculture found that poor sanitation practices at a Boar\'s Head facility in Virginia contributed to the largest listeria outbreak since 2011.', 'https://www.npr.org/2025/01/11/nx-s1-5256921/boars-head-listeria-outbreak-usda-investigation', 'https://npr.brightspotcdn.com/dims3/default/strip/false/crop/5712x3213+0+725/resize/1400/quality/100/format/jpeg/?url=http%3A%2F%2Fnpr-brightspot.s3.amazonaws.com%2F3e%2F41%2Fcae252a34945b47cb54013d6eeed%2Fgettyimages-2164656751.jpg', '2025-01-11 23:45:50'),
(5, 'LA wildfires wreak havoc on farmers and agriculture', 'While the raging flames and damaging winds continue to burn in Los Angeles County, farmers across Southern California also face the possibility of damage to their crops.', 'https://abcnews.go.com/US/la-fires-impact-farmers-agriculture-industry/story?id=117621670', 'https://i.abcnewsfe.com/a/6ead7d25-c876-4ae9-8a22-717a099e45c7/california-wildfires-18-rt-jm-250112_1736718110667_hpMain_16x9.jpg?w=1600', '2025-01-15 11:35:04'),
(6, 'There’s Something Fishy About This Fish Tech Startup', 'The SoftBank-backed eFishery seems to have faked hundreds of millions of dollars in sales.', 'https://gizmodo.com/theres-something-fishy-about-this-fish-tech-startup-2000553691', 'https://gizmodo.com/app/uploads/2025/01/milkfish.jpg', '2025-01-22 22:34:29'),
(7, 'Joe Biden’s national climate adviser sees AI as a ‘massive opportunity’', 'The Verge spoke with national climate adviser Ali Zaidi about what’s ahead for clean energy technologies as the Biden administration comes to a close.', 'https://www.theverge.com/2025/1/10/24339455/national-climate-adviser-ali-zaidi-interview-biden-trump-energy-transition', 'https://cdn.vox-cdn.com/thumbor/MLW5XqqNbMkemCGZNODuM6BK4F8=/0x0:2040x1360/1200x628/filters:focal(1020x680:1021x681)/cdn.vox-cdn.com/uploads/chorus_asset/file/25824420/257499_AI_climate_Q_A_CVirginia.jpg', '2025-01-10 18:00:00'),
(8, 'The U.S. Pledged to Halve Food Waste—We’re Nowhere Close', 'Americans waste more than 300 pounds of food per person per year, study says.', 'https://gizmodo.com/the-u-s-pledged-to-halve-food-waste-were-nowhere-close-2000553489', 'https://gizmodo.com/app/uploads/2025/01/Food-Waste-Problem.jpg', '2025-01-25 14:00:09'),
(9, 'Taquitos sold at Aldi stores are recalled due to metal pieces', 'Nearly 25,000 pounds of taquitos recalled after a consumer found metal pieces, while another reported a dental injury.', 'https://www.cbsnews.com/news/aldi-taquito-recall-taquitos-metal-pieces/?ftag=YHF4eb9d17', 'https://s.yimg.com/ny/api/res/1.2/PSCkRKbGhRLk9tYQ_ZIXxg--/YXBwaWQ9aGlnaGxhbmRlcjt3PTEyMDA7aD03NzU-/https://media.zenfs.com/en/cbs_news_897/51c8278488758d4938b3bb0d5b0d06be', '2025-01-13 19:20:01'),
(10, '$12,000 a month in Stanislaus County? California is hiring for these high-paying state jobs', 'State jobs are known for offering competitive benefits and enrollment in the state’s public pension plan.', 'https://www.modbee.com/news/local/article298615743.html', 'https://media.zenfs.com/en/modesto_bee_mcclatchy_articles_658/2e2c8bc0b2f0e1861ec405c54e37d8bf', '2025-01-20 14:00:00'),
(11, 'Should you be worried about bird strikes during your next flight?', 'Bird strikes occur daily for commercial flights, costing airlines millions in damages each year. Although rare, these incidents can result in injuries and fatalities.', 'https://www.npr.org/2024/12/31/nx-s1-5243325/bird-strikes-plane-crash-south-korea', 'https://npr.brightspotcdn.com/dims3/default/strip/false/crop/5500x3094+0+284/resize/1400/quality/100/format/jpeg/?url=http%3A%2F%2Fnpr-brightspot.s3.amazonaws.com%2Fcf%2F60%2Fd4b684f14923b721502effc1a29f%2Fap23009647469587.jpg', '2024-12-31 11:00:00'),
(12, 'Smallest USB Device… So Far', 'For better or worse it seems to be human nature to compete with one another, as individuals or teams, rather than experience contentedness while moving to the woods and admiring nature Thoreau-styl…', 'https://hackaday.com/2025/01/20/smallest-usb-device-so-far/', 'https://hackaday.com/wp-content/uploads/2025/01/tiny-usb-main.jpg', '2025-01-20 22:00:35'),
(13, 'Moholy-Nagy University of Art and Design Budapest presents ten design projects', 'Dezeen School Shows: a vehicle with an integrated drone system used to promote agriculture is included in this School Show from Moholy-Nagy University of Art and Design Budapest (MOME). Also included is a toothbrush designed to self-sterilise and lamps which …', 'https://www.dezeen.com/2025/01/08/moholy-nagy-design-student-projects-dezeen-schoolshows/', 'https://static.dezeen.com/uploads/2025/01/mome-dezeen-schoolshows-sq_dezeen_2364_col_1-1-600x600.jpg', '2025-01-08 18:00:12'),
(14, 'NYC grocery store closed over \'severe\' unsanitary conditions: What state inspectors found', 'Among the violations state inspectors found were mouse bites on smoked salmon and sausages, as well as moldlike residues on food surfaces.', 'https://www.fox5ny.com/news/nyc-grocery-store-barzinis-closed-rat-infestation', 'https://s.yimg.com/ny/api/res/1.2/PxwON51T.aVt4EAPay0BAw--/YXBwaWQ9aGlnaGxhbmRlcjt3PTEyMDA7aD02NzU-/https://media.zenfs.com/en/wnyw_fox_local_articles_540/6e8a1768f4b8fa70b3b94db9a0e980fb', '2025-01-21 13:56:39'),
(15, 'Electric fungi: The biobattery that needs to be fed', 'A battery that needs feeding instead of charging? This is exactly what researchers have achieved with their 3D-printed, biodegradable fungal battery. The living battery could supply power to sensors for agriculture or research in remote regions. Once the work…', 'https://www.sciencedaily.com/releases/2025/01/250109125838.htm', 'https://www.sciencedaily.com/images/scidaily-icon.png', '2025-01-09 18:58:38'),
(16, 'Despite strict laws, Texas is awash in intoxicating cannabis', 'Recreational marijuana is still illegal in Texas. The socially conservative legislature has voted it down year after year. And yet, with its exploding market for largely unregulated consumable hemp, Texas has inadvertently become the new Republic of THC.', 'https://www.npr.org/2025/01/10/nx-s1-5220336/despite-strict-laws-texas-is-awash-in-intoxicating-cannabis', 'https://npr.brightspotcdn.com/dims3/default/strip/false/crop/3000x1688+0+281/resize/1400/quality/100/format/jpeg/?url=http%3A%2F%2Fnpr-brightspot.s3.amazonaws.com%2Fd3%2F68%2F618c7d37479a958b6ba068c7314a%2Fnico-1.jpg', '2025-01-13 10:06:20'),
(17, 'Florida lawmakers pass sweeping immigration bill to help with Trump crackdown', 'Florida lawmakers have passed a sweeping immigration bill, setting aside half a billion dollars in public funds to help carry out President Donald Trump’s crackdown on people in the country illegally', 'https://abcnews.go.com/US/wireStory/florida-lawmakers-pass-sweeping-immigration-bill-trump-crackdown-118204892', 'https://i.abcnewsfe.com/a/1975f310-d76d-4836-a675-64c9d983680f/wirestory_98ba7a205e71d308087f9861047fd7dd_16x9.jpg?w=1600', '2025-01-29 04:50:53'),
(18, 'Nobel economist Paul Krugman says Trump\'s policies will leave his blue-collar base feeling \'brutally scammed\'', 'Economist Paul Krugman says Trump\'s tariffs, tax cuts, and deportations won\'t bring down grocery prices and will harm working-class Americans.', 'https://www.businessinsider.com/krugman-trump-tariffs-immigration-deportation-grocery-prices-wealth-taxes-policy-2025-1', 'https://i.insider.com/6787ab8fe294a7514e8d2bc9?width=1200&format=jpeg', '2025-01-15 15:26:48'),
(19, 'China has been stockpiling a key US crop before Trump takes office', 'President-elect Donald Trump has threatened tariffs of 60% against all Chinese goods, igniting fears of retaliatory tariffs from China.', 'https://www.businessinsider.com/china-soybean-imports-us-trump-trade-tariff-war-agriculture-farmers-2025-1', 'https://i.insider.com/6785dcb2e294a7514e8ce07f?width=1200&format=jpeg', '2025-01-16 05:05:10'),
(20, 'The 5 fastest-growing skills you might need for job success — and the ones that may not help', 'AI and cybersecurity skills will likely be in high demand in the next few years, a WEF survey of more than 1,000 employers found.', 'https://www.businessinsider.com/fastest-growing-skills-for-job-success-ai-cybersecurity-data-fintech-2025-1', 'https://i.insider.com/677ee7168951662c9f1f4b69?width=1200&format=jpeg', '2025-01-09 20:42:15'),
(21, 'Solar farms are booming in the US and putting thousands of hungry sheep to work', 'On rural Texas farmland, beneath hundreds of rows of solar panels, a troop of stocky sheep rummage through pasture, casually bumping into one another as they...', 'https://www.yahoo.com/news/solar-farms-booming-us-putting-060623092.html', 'https://s.yimg.com/ny/api/res/1.2/RC.s14.R3XMbJsBAiIagOg--/YXBwaWQ9aGlnaGxhbmRlcjt3PTEyMDA7aD04MDA-/https://media.zenfs.com/en/ap.org/4449466c681db3b57e1ccf834efca7dc', '2025-01-19 07:06:23'),
(22, 'Brazil announces controversial new plan that could drastically change the meat industry: \'People want to know\'', '\"Tracing beef will expose what\'s been hidden under the rug.\"', 'https://www.yahoo.com/news/brazil-announces-controversial-plan-could-104510995.html', 'https://s.yimg.com/ny/api/res/1.2/Wy1LqTxzH.iw6VM0JIWPJQ--/YXBwaWQ9aGlnaGxhbmRlcjt3PTEyMDA7aD02NzU-/https://media.zenfs.com/en/the_cool_down_737/a5ee50599b8faf53ba91bf09fb14a14c', '2025-01-04 11:45:10'),
(23, 'Meet the 52 women competing to be Miss America 2025', 'The 2025 Miss America pageant will take place in Orlando on January 5. This year\'s contestants include a national figure skater and a trauma nurse.', 'https://www.businessinsider.com/miss-america-pageant-contestants-2025-1', 'https://i.insider.com/6778358244aa267a51f2256b?width=1200&format=jpeg', '2025-01-03 22:53:48'),
(24, 'Boar’s Head Plants Struggled with Insects and Slime, Records Show', 'Newly released reports from Boar\'s Head plants described multiple instances of filth, including mold, stinky residue, insects, and slime.', 'https://time.com/7206944/boars-head-plants-insects-slime/', 'https://api.time.com/wp-content/uploads/2025/01/boars-head.jpg?quality=85&w=1200&h=628&crop=1', '2025-01-14 22:51:15'),
(25, 'Croatian deputy PM resigns over video of him firing gun', 'He is seen in the passenger seat chatting and laughing, before firing a pistol out into the dark.', 'https://www.bbc.com/news/articles/c3rwnd0devyo', 'https://ichef.bbci.co.uk/news/1024/branded_news/4f91/live/b48240d0-d5a5-11ef-aaa4-63248582f477.jpg', '2025-01-18 15:29:14'),
(26, 'Food pantries are bracing for more demand if the Trump administration cuts food aid', 'The first Trump administration tried to scale back who gets food benefits, and allies aim to try again. Food pantries say they\'re already busier than ever.', 'https://www.npr.org/2025/01/17/nx-s1-5213815/food-pantries-are-bracing-for-more-demand-if-the-trump-administration-cuts-food-aid', 'https://npr.brightspotcdn.com/dims3/default/strip/false/crop/5735x3226+0+318/resize/1400/quality/100/format/jpeg/?url=http%3A%2F%2Fnpr-brightspot.s3.amazonaws.com%2F95%2Fb6%2F8576186f4854ad01a3a77ed6e608%2Fddwyer-foodinsecurity-npr-40.jpg', '2025-01-17 15:30:40'),
(27, 'Midwest farmers rush to sell corn as prices rally. What’s behind the surge?', 'Corn prices are now up about 10% over the past month.\n\nIowa farmer Caleb Hamer grabbed his phone and dialed a local corn buyer this week, eager to sell his grain as prices climbed to their highest level in more than a year.', 'https://www.fastcompany.com/91261924/midwest-farmers-rush-sell-corn-prices-rally-whats-behind-surge', 'https://images.fastcompany.com/image/upload/f_webp,q_auto,c_fit/wp-cms-2/2025/01/2025-01-16T110612Z_1_LYNXMPEL0F0E7_RTROPTP_4_USA-CORN.jpg', '2025-01-16 15:11:55'),
(28, 'The FTC Take Action, Is Time Finally Up For John Deere On Right To Repair?', 'Over the last decade we have brought you frequent reports not from the coolest of hackerspaces or the most bleeding edge of engineering in California or China, but from the rolling prairies of the …', 'https://hackaday.com/2025/01/27/the-ftc-take-action-is-time-finally-up-for-john-deere-on-right-to-repair/', 'https://hackaday.com/wp-content/uploads/2017/03/deere-hack-featured.jpg', '2025-01-27 19:00:53'),
(29, 'Food made without farming will go on sale in the US in 2025', 'Several start-ups are preparing to launch new foods made without plants, animals or soil, claiming that their products have a lower environmental impact', 'https://www.newscientist.com/article/2461346-food-made-without-farming-will-go-on-sale-in-the-us-in-2025/', 'https://images.newscientist.com/wp-content/uploads/2024/12/18115055/SEI_212098260.jpg', '2024-12-31 11:00:49'),
(30, 'Ash tree variability may offer restoration path post-beetle decimation', 'The invasive emerald ash borer, according to the U.S. Department of Agriculture, was first found in the United States in southeast Michigan in 2002. In the decades since, the wood-boring beetle has spread east and west across the U.S. and Canada, killing tens…', 'https://www.sciencedaily.com/releases/2025/01/250113134001.htm', 'https://www.sciencedaily.com/images/scidaily-icon.png', '2025-01-13 19:40:01'),
(31, 'Is bird flu subsiding in Tulare County? What to know as virus reshapes farming practices', 'Recent data shows a decline in bird flu cases in Tulare County, but ag officials remain wary.', 'https://www.visaliatimesdelta.com/story/news/local/2025/01/13/bird-flu-decline-in-tulare-county-latest-updates-safety-measures/77585645007/', 'https://media.zenfs.com/en/visalia-times-delta-tulare-advance-register/a1076fddf521b1dde7663d5c889be4aa', '2025-01-13 11:03:44'),
(32, 'Raw Cat Food Linked to Bird Flu -- A Vet Shares How to Protect Your Pets From the Virus', 'Both cats and dogs can contract the virus, but cats are at higher risk for severe illness. We asked an expert what you can do about it.', 'https://www.cnet.com/home/kitchen-and-household/raw-cat-food-linked-to-bird-flu-a-vet-shares-how-to-protect-your-pets-from-the-virus/', 'https://www.cnet.com/a/img/resize/fdd8ec5d38d9cc1c2462bfc3b0e5875bfa1ce564/hub/2025/01/13/f6c94631-cb7c-4032-9bce-a34dc10a8a3a/gettyimages-1687139789.jpg?auto=webp&fit=crop&height=675&width=1200', '2025-01-14 16:00:04'),
(33, 'Biden establishes largest corridor of protected land by adding 2 new monuments', 'The two new monuments -- the Chuckwalla and Sáttítla Highlands -- total nearly 850,000 acres, according to the administration.', 'https://abcnews.go.com/Politics/biden-establishes-largest-corridor-protected-land-adding-2/story?id=117403648', 'https://i.abcnewsfe.com/a/1d36b1ab-bb0f-4d14-afbb-67643d797e16/joe-biden-1-rt-gmh-241229_1735518687464_hpMain_2_16x9.jpg?w=1600', '2025-01-07 11:16:20'),
(34, 'Cat Food Recalls Continue As Another Popular Brand Tests Positive for Bird Flu', 'Throw the food out immediately!', 'https://pethelpful.com/pet-news/cat-food-recalls-continue-another-popular-brand-tests-positive-for-bird-flu', 'https://media.zenfs.com/en/pethelpful_915/6eadff88ce583616357864a0cc1bcf01', '2025-01-06 19:35:00'),
(35, 'Backlash in Kenya over livestock vaccines and belching cows', 'Why there is growing scepticism in Kenya over a plan to vaccinate the national herd.', 'https://www.bbc.com/news/articles/cj02rvvd8g2o', 'https://ichef.bbci.co.uk/news/1024/branded_news/e0f9/live/50688d80-dc48-11ef-803a-cd9ff43466db.jpg', '2025-01-28 01:33:29'),
(36, 'All of the Day 1 executive actions Trump has announced so far', 'Trump is expected to sign a slew of actions relating to immigration and other issues.', 'https://www.npr.org/2025/01/20/g-s1-43698/trump-inauguration-executive-orders-2025-day-1', 'https://npr.brightspotcdn.com/dims3/default/strip/false/crop/5088x2862+0+172/resize/1400/quality/100/format/jpeg/?url=http%3A%2F%2Fnpr-brightspot.s3.amazonaws.com%2F6f%2F6d%2F7607e79844cb92190ed9ef1fbf15%2Fgettyimages-2194777765.jpg', '2025-01-20 16:48:50'),
(37, 'Winds threaten the containment of wildfires. And, DHS chief reflects on his career', 'Santa Ana winds are expected to pick back up, threatening the containment of Southern California wildfires. And, Homeland Security Secretary Alejandro Mayorkas reflects on his career.', 'https://www.npr.org/2025/01/13/g-s1-42445/up-first-newsletter-santa-ana-winds-southern-california-wildfires-dhs-chief-mayorkas-israel-gaza-ceasefire', 'https://npr.brightspotcdn.com/dims3/default/strip/false/crop/4320x2430+0+225/resize/1400/quality/100/format/jpeg/?url=http%3A%2F%2Fnpr-brightspot.s3.amazonaws.com%2F59%2Ffa%2F73f5ea3d442e925d5e953fc6c754%2Fap25011651409049.jpg', '2025-01-13 14:13:53'),
(38, 'Trump uses mass firing to remove inspectors general at a series of agencies', 'The dismissals began Friday night, according to two people cited by The Associated Press. An email sent by one of the fired inspectors general said \"roughly 17\" inspectors general had been removed.', 'https://www.npr.org/2025/01/25/g-s1-44771/trump-fires-inspectors-general', 'https://npr.brightspotcdn.com/dims3/default/strip/false/crop/3260x1834+0+172/resize/1400/quality/100/format/jpeg/?url=http%3A%2F%2Fnpr-brightspot.s3.amazonaws.com%2F1f%2Fa1%2F7519451148899ec4fe250c162ce9%2Fap25025172601494.jpg', '2025-01-25 19:25:12'),
(39, 'Inside the life and career of Melinda Gates, philanthropist and one of the world\'s richest and most powerful women', 'Melinda Gates, the ex-wife of Microsoft co-founder Bill Gates, is among the world\'s richest women. Read about her life, career, and philanthropy.', 'https://www.businessinsider.com/melinda-gates', 'https://i.insider.com/676ef150bec2d3fdefeb342e?width=1200&format=jpeg', '2025-01-07 04:02:01'),
(40, 'I\'m an heir to the Anheuser-Busch fortune. I learned about manual labor on my family farm and am passing those lessons on to my kids.', 'Billy Busch is an heir to the Anheuser-Busch multi-billion-dollar fortune. He\'s teaching his kids all about money and the value of hard work.', 'https://www.businessinsider.com/billy-busch-anheuser-busch-heir-teaching-kids-value-money-2025-1', 'https://i.insider.com/67893eb650dfd88e193ec155?width=1004&format=jpeg', '2025-01-19 12:37:01'),
(41, 'One chart shows that low-income Americans get hit hardest by inflation', 'Rising food and housing costs have hit the lowest-income Americans the hardest in recent years.', 'https://www.businessinsider.com/lowest-income-americans-inflation-food-housing-costs-chart-2025-1', 'https://i.insider.com/679258b02fcded5e907469cc?width=1200&format=jpeg', '2025-01-27 12:00:03'),
(42, 'The Bill and Melinda Gates Foundation is one of the world\'s largest charitable organizations. Here\'s what to know.', 'The Bill and Melinda Gates Foundation is a charitable organization that has spent tens of billions of dollars fighting global poverty and disease.', 'https://www.businessinsider.com/bill-and-melinda-gates-foundation', 'https://i.insider.com/66e9f162d17aa3c7b2b39526?width=1200&format=jpeg', '2025-01-04 10:50:01'),
(43, 'A retirement boom and slowing immigration could help job seekers find work this year', 'A decrease in immigration and increase in retirements could help people find work this year. But these factors could create problems for the economy.', 'https://www.businessinsider.com/immigration-restrictions-retirement-increases-could-help-job-seekers-find-work-2025-1', 'https://i.insider.com/6786d4668951662c9f203157?width=1200&format=jpeg', '2025-01-16 10:35:02'),
(44, 'How poop could help feed the planet', 'A new industrial facility in suburban Seattle is giving off a whiff of futuristic technology. It can safely treat fecal waste from people and livestock while recycling nutrients that are crucial for agriculture but in increasingly short supply across the nati…', 'https://www.technologyreview.com/2025/01/03/1108658/poop-feces-agriculture-varcor-biowaste/', 'https://wp.technologyreview.com/wp-content/uploads/2024/12/Varcor-Facility-Interiorpoop-thumb.jpg?resize=1200,600', '2025-01-03 12:00:00'),
(45, 'Trump orders federal employees to return to the office full-time', 'Trump promised stark changes for government workers. On his first day in office, he ordered federal employees to return to the office.', 'https://www.businessinsider.com/donald-trump-orders-federal-workers-return-to-office-rto-2025-1', 'https://i.insider.com/678a7ff12fcded5e9073a8dc?width=1200&format=jpeg', '2025-01-21 02:04:34'),
(46, 'Vote du budget au Sénat: le bio fait lui aussi les frais de l’austérité', 'L’Agence Bio, chargée de la promotion du label « Agriculture biologique », voit son avenir compromis après le vote d’un amendement vendredi 17 janvier. Derrière ce texte : le sénateur et agriculteur de la FNSEA Laurent Duplomb.', 'https://www.mediapart.fr/journal/politique/200125/vote-du-budget-au-senat-le-bio-fait-lui-aussi-les-frais-de-l-austerite', 'https://static.mediapart.fr/etmagine/og/journal/files/2025/01/20/250120-vote-du-budget-au-senat-le-bio-fait-lui-aussi-les-frais-de-l-austerite-budgetaire-politiques.jpg', '2025-01-20 19:33:21'),
(47, 'Vote du budget au Sénat: le bio fait lui aussi les frais de l’austérité budgétaire', 'L’Agence Bio, chargée de la promotion du label « Agriculture biologique », voit son avenir compromis après le vote d’un amendement vendredi 17 janvier. Derrière ce texte : le sénateur et agriculteur de la FNSEA Laurent Duplomb.', 'https://www.mediapart.fr/journal/politique/200125/vote-du-budget-au-senat-le-bio-fait-lui-aussi-les-frais-de-l-austerite-budgetaire', 'https://static.mediapart.fr/etmagine/og/journal/files/2025/01/20/250120-vote-du-budget-au-senat-le-bio-fait-lui-aussi-les-frais-de-l-austerite-budgetaire-politiques.jpg', '2025-01-20 19:33:21'),
(48, 'GTA Online role-play server launches new phase with wild custom options', 'While fans eagerly anticipate Grand Theft Auto 6, players are still getting plenty of mileage out of the game’s predecessor. Rockstar is continuing to provide official updates for GTA Online, and players are building their own role-play servers set in San And…', 'https://www.polygon.com/culture/504002/gta-online-purplerp-1-0-update', 'https://platform.polygon.com/wp-content/uploads/sites/2/2025/01/itznyx90-Screenshot-1.png?quality=90&strip=all&crop=0.10673277661796%2C0%2C99.786534446764%2C100&w=1200', '2025-01-03 22:52:33'),
(49, 'Mass deportations would deliver a catastrophic blow to the U.S. Economy', 'The incoming Trump administration plans to conduct mass deportations that would upend entire communities and have severe economic fallout. Mass deportations would reduce economic growth, shrink the labor force, cost U.S.-born workers their jobs, raise costs f…', 'https://www.jec.senate.gov/public/index.cfm/democrats/2024/12/mass-deportations-would-deliver-a-catastrophic-blow-to-the-u-s-economy', 'https://www.jec.senate.gov/public/?a=Files.Image&Image_id=7280E91E-0F36-4F59-BB30-EA7017C2B047&ImageSize=twitter-card', '2025-01-23 13:06:04'),
(50, 'Harvest smarter, not harder: Machine learning meets tomato farming', 'A research team led by Dr. David Helman from the Faculty of Agriculture, Food and Environment at the Hebrew University of Jerusalem has developed a novel machine learning model employing hyperspectral imaging to assess the quality of tomatoes before harvest. …', 'https://phys.org/news/2025-01-harvest-smarter-harder-machine-tomato.html', 'https://scx2.b-cdn.net/gfx/news/2025/harvest-smarter-not-ha.jpg', '2025-01-23 21:55:02'),
(51, 'Innovative process converts urine into slow-release crystal fertilizer', 'A team of chemists and agriculture specialists has developed a way to transform urea in wastewater, into percarbamide, which can be used as a fertilizer. In their paper published in the journal Nature Catalysis, the group describes their process and how well …', 'https://phys.org/news/2025-01-urine-crystal-fertilizer.html', 'https://scx2.b-cdn.net/gfx/news/2025/a-way-to-convert-urine.jpg', '2025-01-21 21:10:01'),
(52, 'Major Florida grower to end citrus operations after years of hurricanes and tree disease', 'A major grower said this week it was abandoning its citrus growing operations, reflecting the headwinds Florida\'s signature crops are facing following a...', 'https://www.yahoo.com/news/major-florida-grower-end-citrus-164830449.html', 'https://s.yimg.com/ny/api/res/1.2/JzikH9gGaahefeEi09t17w--/YXBwaWQ9aGlnaGxhbmRlcjt3PTEyMDA7aD04MDA-/https://media.zenfs.com/en/ap.org/e11868a90917fcd28d446cf961ae2168', '2025-01-07 17:48:30'),
(53, 'Ceasefire kindles hope of hostage son\'s return to Nepal', 'Bipin Joshi, 23, was one of dozens of foreign workers taken hostage by Hamas on 7 October 2023.', 'https://www.bbc.com/news/articles/cy4m734g292o', 'https://ichef.bbci.co.uk/news/1024/branded_news/33f0/live/86176e30-d41c-11ef-9321-378935dad855.jpg', '2025-01-16 17:27:18'),
(54, 'America\'s first bird flu death reported in Louisiana', 'The first person to have a severe case of H5N1 bird flu in the United States has died, according to the Louisiana Department of Health.', 'https://www.cnn.com/2025/01/06/health/bird-flu-death-louisiana/index.html', 'https://media.cnn.com/api/v1/images/stellar/prod/ap24361859677442.jpg?c=16x9&q=w_800,c_fill', '2025-01-06 22:16:17'),
(55, 'A palm oil company, a group of US financiers, and the destruction of Peru\'s rainforest', 'A company backed by US financiers sold \"deforestation-free\" palm oil to the makers of Cheetos, Colgate and Pepsi. But its investors have ties to the company that cleared Amazonian rainforest for plantations.', 'https://www.businessinsider.com/us-investors-and-the-destruction-of-peru-rainforest-2024-12', 'https://i.insider.com/6761f1286c531c315b88d9b1?width=1200&format=jpeg', '2024-12-31 10:07:01'),
(56, 'Canadian Prime Minister Justin Trudeau resigns as leader of Liberal Party', 'The development comes a month after Canada\'s deputy prime minister, Chrystia Freeland, resigned suddenly from Trudeau\'s cabinet.', 'https://abcnews.go.com/International/canadian-prime-minister-justin-trudeau-resigns-leader-liberal-party/story?id=116837766', 'https://i.abcnewsfe.com/a/0eba7a82-0ff7-46ae-b36f-bc8dbe536339/justin-trudeau-gty-jef-241216_1734374473560_hpMain_16x9.jpg?w=1600', '2025-01-06 17:07:40'),
(57, 'Glyphosate-resistant weeds have evolved in the UK for the first time', 'The herbicide glyphosate is helping farmers adopt more environmentally friendly practices, and resistant weeds will make this transition more difficult, experts say', 'https://www.newscientist.com/article/2463566-glyphosate-resistant-weeds-have-evolved-in-the-uk-for-the-first-time/', 'https://images.newscientist.com/wp-content/uploads/2025/01/10123319/SEI_235538937.jpg', '2025-01-10 14:17:21'),
(58, 'Urban food gardens produce more than vegetables, they create bonds for young Capetonians', 'Urban agriculture takes many forms, among them community, school or rooftop gardens, commercial urban farms, and hydroponic or aquaponic systems. These activities have been shown to promote sustainable cities in a number of ways. They enhance local food secur…', 'https://phys.org/news/2025-01-urban-food-gardens-vegetables-bonds.html', 'https://scx2.b-cdn.net/gfx/news/hires/2025/urban-garden.jpg', '2025-01-27 18:40:01'),
(59, 'What to know about protecting your cat from bird flu', 'A few cats have died from bird flu after eating raw food. And some raw pet food products have been recalled. Here\'s what to know about the risks to your fur babies, and how to keep them safe.', 'https://www.npr.org/sections/shots-health-news/2025/01/22/nx-s1-5270042/cat-food-bird-flu-raw-milk', 'https://npr.brightspotcdn.com/dims3/default/strip/false/crop/2121x1193+0+110/resize/1400/quality/100/format/jpeg/?url=http%3A%2F%2Fnpr-brightspot.s3.amazonaws.com%2F93%2F92%2F59e65a7a473bb61b3f5bb0447504%2Fgettyimages-937778210.jpg', '2025-01-22 13:00:00'),
(60, 'Biden Awards Three Climate Experts Nation’s Highest Science Honor', 'Richard Alley, Lawrence Edwards and David Tilman were among the two dozen honorees who received the National Medal of Science or the National Medal of Technology and Innovation last week', 'https://subscriber.politicopro.com/article/eenews/2025/01/06/biden-awards-national-medals-to-climate-scientists-00196455', 'https://static.scientificamerican.com/dam/m/7aa839548f7e4cc2/original/Melting-glacier.jpg?m=1736179656.271&w=1200', '2025-01-06 18:00:00'),
(61, 'Explosive Palisades Fire Fueled by Santa Ana Winds', 'The nature of the Santa Ana winds makes them perfectly suited to spreading flames. The destructive Palisades Fire is the latest example', 'https://www.scientificamerican.com/article/explosive-palisades-fire-fueled-by-santa-ana-winds/', 'https://static.scientificamerican.com/dam/m/68418389befa3fe9/original/Pacific-Palisades-fire.jpg?m=1736291821.331&w=1200', '2025-01-08 00:30:00'),
(62, 'Ancient Celtic tribe had women at its social center', 'Ancient DNA reveals that during the Iron Age, women in ancient Celtic societies were at the center of their social networks — unlike previous eras of prehistory.', 'https://www.npr.org/2025/01/15/nx-s1-5258236/ancient-celtic-tribe-had-women-at-its-social-center', 'https://npr.brightspotcdn.com/dims3/default/strip/false/crop/4000x2250+0+0/resize/1400/quality/100/format/jpeg/?url=http%3A%2F%2Fnpr-brightspot.s3.amazonaws.com%2F20%2F5e%2F5c86479048938729258c66a33378%2Fexcavating-a-late-iron-age-durotriges-burial-at-win', '2025-01-15 21:09:52'),
(63, 'Why some fire hydrants in LA had no water to fight the fires, despite full reservoirs', 'Some fire hydrants in Los Angeles had no water to douse the fires. Here\'s what happened, and why the endangered smelt fish wrongly got blamed.', 'https://www.businessinsider.com/california-fires-why-fire-hydrants-los-angeles-had-no-water-2025-1', 'https://i.insider.com/678128348951662c9f1f90e8?width=1024&format=jpeg', '2025-01-10 17:30:16'),
(64, 'Trump\'s administration has already been sued over these executive orders', 'President Donald Trump\'s executive orders involving DOGE and birthright citizenship are among those targeted in lawsuits.', 'https://www.businessinsider.com/donald-trump-administration-sued-over-executive-orders-2025-1', 'https://i.insider.com/678fd928ae09223df2baca26?width=1200&format=jpeg', '2025-01-21 19:50:29'),
(65, 'Everyone is talking about ranches right now. Here are 3 reasons why.', 'Cowboys are all over pop culture, people crave wide open spaces, and older ranchers are retiring and putting their land on the market.', 'https://www.businessinsider.com/ranches-for-sale-in-the-us-yellowstone-cowboy-culture-popular-2025-1', 'https://i.insider.com/676b1235a3e82c79120451eb?width=1200&format=jpeg', '2025-01-25 10:30:02'),
(66, 'Could eradicated ‘murder hornets’ invade the US again?', 'An expert explains the recent news of the eradication of murder hornets in the US, including whether they could return.', 'https://www.futurity.org/murder-hornets-eradication-3262802/', 'https://www.futurity.org/wp/wp-content/uploads/2025/01/murder-hornets-us-eradication-1600.jpg', '2025-01-03 18:21:57'),
(67, 'Algae-based method purifies chemically polluted water effectively, study finds', 'Europe\'s water bodies are in poor condition: more than half of them are heavily polluted with chemicals. This is hardly surprising—every day, up to 70,000 different chemicals are used in Europe\'s industries and agriculture. Researchers at the University of Du…', 'https://phys.org/news/2025-01-algae-based-method-purifies-chemically.html', 'https://scx2.b-cdn.net/gfx/news/hires/2025/fighting-chemical-poll.jpg', '2025-01-24 17:00:03'),
(68, 'U.S. Corn Belt: Intensive farming and shallow groundwater affect precipitation patterns', 'New research shows that the sweeping land use changes and irrigation of the U.S. Corn Belt, along with the influence of the area\'s shallow groundwater, have significantly altered precipitation patterns in that vital agricultural region.', 'https://www.sciencedaily.com/releases/2025/01/250106195638.htm', 'https://www.sciencedaily.com/images/scidaily-icon.png', '2025-01-07 01:56:38'),
(69, 'Protein protects biological nitrogen fixation from oxidative stress', 'A research team has discovered how the \'Shethna protein II\' protects the nitrogen-fixing enzyme nitrogenase from damage. The oxygen sensor protein could help to make nitrogenase usable in biotechnology, thereby reducing the need for synthetic fertilizers.', 'https://www.sciencedaily.com/releases/2025/01/250115165045.htm', 'https://www.sciencedaily.com/images/scidaily-icon.png', '2025-01-15 22:50:45'),
(70, 'Adapting Agricultural Wisdom For Business Success', 'Learning the ins and outs of honey, wine and oil production has shown me the profound connections that agriculture and business share.', 'https://www.forbes.com/councils/forbesbusinessdevelopmentcouncil/2024/12/30/adapting-agricultural-wisdom-for-business-success/', 'https://imageio.forbes.com/specials-images/imageserve/676eb17af7d9a0b2276ef763/0x0.jpg?format=jpg&height=900&width=1600&fit=bounds', '2024-12-30 13:15:00'),
(71, 'Here’s Why Egg Prices Are So High—And May Get Worse As Bird Flu Persists', 'The Department of Agriculture warned egg prices may increase more than 20% this year, after December saw a year-over-year increase of 36.8%.', 'https://www.forbes.com/sites/mollybohannon/2025/01/28/heres-why-egg-prices-are-so-high-and-may-get-worse-as-bird-flu-persists/', 'https://imageio.forbes.com/specials-images/imageserve/67992bc07a4bac8793ba5c97/0x0.jpg?format=jpg&crop=1839,1034,x0,y95,safe&height=900&width=1600&fit=bounds', '2025-01-28 20:53:41'),
(72, 'What is it the red fire retardant dropped by planes to fight LA fires?', 'The U.S. Forest Service bans the use of long-term fire retardant on federal lands near waterways or endangered species habitats.', 'https://www.usatoday.com/story/news/nation/2025/01/13/california-wildfires-red-fire-retardant/77666937007/', 'https://s.yimg.com/ny/api/res/1.2/e3hAnxvDiIROwu_UsucvTA--/YXBwaWQ9aGlnaGxhbmRlcjt3PTEyMDA7aD04MDA-/https://media.zenfs.com/en/usa_today_news_641/9788f4260fee917287241583cf6a7d8e', '2025-01-13 19:26:51'),
(73, 'US Chamber, oil industry sue Vermont over law requiring companies to pay for climate change damage', 'The U.S. Chamber of Commerce and a top oil and gas industry trade group are suing Vermont over its new law requiring that fossil fuel companies pay a share...', 'https://www.yahoo.com/news/us-chamber-oil-industry-sue-194359823.html', 'https://s.yimg.com/ny/api/res/1.2/xGBn4lD0qcCOwGm29159qA--/YXBwaWQ9aGlnaGxhbmRlcjt3PTEyMDA7aD04MDA-/https://media.zenfs.com/en/ap.org/ba8b5b459a6ca1c229471e894f04a81e', '2025-01-03 20:43:59'),
(74, 'How factory farming built America', 'Future Perfect, Vox’s section dedicated to solving the world’s most important yet neglected problems, obsessively covers how the way we eat affects our lives and our planet. For the last year, we’ve been working hard on a special series of ambitious, deeply r…', 'https://www.vox.com/future-perfect/394801/how-factory-farming-built-america-meat-dairy-industry-influence', 'https://platform.vox.com/wp-content/uploads/sites/2/2024/05/big_dairy_final.jpg?quality=90&strip=all&crop=0%2C10.732984293194%2C100%2C78.534031413613&w=1200', '2025-01-14 21:26:39'),
(75, 'Trump Uses Mass Firing to Remove Independent Inspectors General at Various Agencies', 'The Trump Administration has fired about 17 independent inspectors general at government agencies,', 'https://time.com/7210016/trump-mass-firing-removes-independent-inspectors-general/', 'https://api.time.com/wp-content/uploads/2025/01/GettyImages-2192426947_7f4994.jpg?quality=85&w=1200&h=628&crop=1', '2025-01-25 18:35:21'),
(76, 'Archaeologists Discover 3000-Year-Old ‘Mega-Fortress’ 40 Times Larger Than Expected', 'The flora had previously concealed vast fortification walls and stone structures beyond an inner fortress.', 'https://gizmodo.com/archaeologists-discover-3000-year-old-mega-fortress-40-times-larger-than-expected-2000548246', 'https://gizmodo.com/app/uploads/2025/01/Dmanisis-Gora-map.jpg', '2025-01-12 16:00:19'),
(77, 'New Strain of Bird Flu Found on California Duck Farm', 'It\'s the first time that highly pathogenic avian influenza H5N9 has been found in U.S. poultry.', 'https://gizmodo.com/new-strain-of-bird-flu-found-on-california-duck-farm-2000555762', 'https://gizmodo.com/app/uploads/2025/01/Duck.jpg', '2025-01-28 18:25:49'),
(78, 'What to Know About Trump’s Order on Birthright Citizenship and the Legal Battle Around It', 'Here\'s a guide to what birthright citizenship is, what happens if Trump\'s order ends it, and what comes next after lawsuits were filed.', 'https://time.com/7208965/birthright-citizenship-trump-order/', 'https://api.time.com/wp-content/uploads/2025/01/GettyImages-2194990747.jpg?quality=85&w=1024&h=628&crop=1', '2025-01-22 01:38:52'),
(79, 'Smart farming: AI predicts potato growth potential', 'A cutting-edge AI tool can now predict how well seed potatoes will grow into healthy potato plants. Developed by biologists from Utrecht University in collaboration with the Delft University of Technology and plant breeders, the tool uses DNA data from bacter…', 'https://phys.org/news/2025-01-smart-farming-ai-potato-growth.html', 'https://scx2.b-cdn.net/gfx/news/2025/smart-farming-ai-predi.jpg', '2025-01-14 17:22:14'),
(80, 'Trump fires at least a dozen government watchdogs', 'Democrats described Trump\'s late-night firing of the federal agency inspectors general as an \'attack on Democracy\'.', 'https://www.bbc.com/news/articles/c5yveml59jlo', 'https://ichef.bbci.co.uk/news/1024/branded_news/d4f6/live/c3f03690-db49-11ef-9eb4-3bff3a5c608d.jpg', '2025-01-25 21:10:28'),
(81, 'The Future of High-Value Crop Farming: John Deere’s Autonomous Diesel Orchard Tractor', 'In the ever-evolving world of agriculture, the demand for innovation and automation has never been greater. With its Autonomous Diesel Orchard Tractor, John Deere is bringing a game-changing solution to high-value crop farming at CES 2025. Alongside this, the…', 'https://www.ubergizmo.com/2025/01/the-future-of-high-value-crop-farming-john-deeres-autonomous-diesel-orchard-tractor/', 'https://i0.wp.com/cdnssl.ubergizmo.com/wp-content/uploads/2025/01/John-deere-autonomous-orchard-tractor-01.jpg', '2025-01-06 19:30:04'),
(82, 'Tra Leonardo e Bf progetto in comune per il Piano Mattei in Africa', 'Il Progetto smart agriculture, frutto del memorandum of understanding stretto a fine novembre tra Leonardo e Bf (già Bonifiche ferraresi), entra ufficialmente nel Piano Mattei, con un’intesa che rafforza la...', 'https://www.ilsole24ore.com/art/tra-leonardo-e-bf-progetto-comune-il-piano-mattei-africa-AGCLekMC', 'https://i2.res.24o.it/images2010/S24/Documenti/2025/01/18/Immagini/Ritagli/trattore-generica-U50565887546Lqx-1440x752@IlSole24Ore-Web.jpeg?r=1170x507', '2025-01-18 05:32:01'),
(83, '3 Chicago startups headed to SXSW Pitch competition', 'Earnest Agriculture CEO Eddy Mejia is in \"deep pitch prep\" after being named a finalist for the SXSW Pitch competition in March. Learn more here.', 'https://biztoc.com/x/7d4bf56f28bd9bcd', 'https://biztoc.com/cdn/7d4bf56f28bd9bcd_s.webp', '2025-01-16 21:22:43'),
(84, '3D printed, biodegradable battery made of fungi powers sensors, feeds on sugar instead of charging', '3D printed, biodegradable battery made of fungi powers sensors, feeds on sugar instead of chargingGraphene batteries are developing into the next big improvement in our everyday devices. As opposed to Lithium-ion, these have the potential to improve the perfo…', 'https://www.yankodesign.com/2025/01/21/3d-printed-biodegradable-battery-made-of-fungi-powers-sensors-feeds-on-sugar-instead-of-charging/', 'https://www.yankodesign.com/images/design_news/2025/01/3d-printed-biodegradable-battery-made-of-fungi-powers-sensors-feeds-on-sugar-instead-of-charging/3D-printed-biodegradable-battery-made-of-fungi-by-Empa-researchers-1.jpg', '2025-01-22 00:30:56'),
(85, 'The First Human Bird Flu Death Has Occurred in the United States', 'The Louisiana Department of Health reports the first U.S. human death caused by H5N1 bird flu.', 'https://www.cnet.com/health/medical/first-human-bird-flu-death-united-states/', 'https://www.cnet.com/a/img/resize/cc9346c849edafa24ba68c1d3905502e2f8a502b/hub/2024/11/30/3b36a785-5883-4ffa-bc65-cb9fd3aa0ab6/gettyimages-1677819202.jpg?auto=webp&fit=crop&height=675&width=1200', '2025-01-07 00:10:45'),
(86, 'States struggle to curb food waste despite policies', 'Current state policies aren\'t enough to curb food waste. Study shows states are falling short of the reduction goals set by the U.S. Environmental Protection Agency.', 'https://www.sciencedaily.com/releases/2025/01/250109125831.htm', 'https://www.sciencedaily.com/images/scidaily-icon.png', '2025-01-09 18:58:31'),
(87, 'The Latest on Bird Flu in Humans, Cats and Chickens', 'H5N1 avian influenza continues to spread amid commercial and backyard poultry, and additional cases have been reported in domestic cats', 'https://www.scientificamerican.com/article/the-latest-on-bird-flu-in-humans-cats-and-chickens/', 'https://static.scientificamerican.com/dam/m/eb40217a96e9180/original/Chicken_farm.jpg?m=1737655847.44&w=1200', '2025-01-23 19:35:00'),
(88, '\"We have only two options before us: reimagine, or perish\"', 'A perfect storm is upon us, and to confront it designers must this year help to lead a fundamental shift in the way we see the world, writes Pooran Desai. Read more', 'https://www.dezeen.com/2025/01/03/reimagining-pooran-desai-opinion/', 'https://static.dezeen.com/uploads/2024/12/valencia-flooding-october-2024-hero_dezeen_2364_col_0-600x600.jpg', '2025-01-03 10:00:52'),
(89, 'Un fragile corridor contre la faim', 'Le blé ukrainien continuera-t-il d\'être exporté via la mer Noire ? Indispensables pour lutter contre la crise alimentaire mondiale, ses chargements dépendent d\'un accord entre la Russie et l\'Ukraine conclu sous la houlette des Nations unies et de la Turquie. …', 'https://www.monde-diplomatique.fr/2023/03/BELKAID/65604', 'https://www.monde-diplomatique.fr/IMG/arton65604.jpg', '2025-01-28 16:26:42'),
(90, 'Severe droughts are getting bigger, hotter, drier and longer', 'Droughts lasting multiple years are becoming more common and extreme around the globe, expanding by about 50,000 square kilometres annually', 'https://www.newscientist.com/article/2464413-severe-droughts-are-getting-bigger-hotter-drier-and-longer/', 'https://images.newscientist.com/wp-content/uploads/2025/01/16174253/sei2361884881.jpg', '2025-01-16 20:00:01'),
(91, '10 celebrities you didn\'t know grew up super rich', 'From royal connections to strategic investments, these celebrities grew up super rich much before they monetized their talent.', 'https://www.businessinsider.com/celebrities-grew-up-super-rich', 'https://i.insider.com/643ed38b2ddd0600182612ff?width=1200&format=jpeg', '2025-01-02 15:23:25'),
(92, 'Here\'s what to expect for raises, promotions, and job-seeking in 2025', 'Economists talked to Business Insider about job market predictions, including work opportunities in 2025, promotions, and return to office mandates.', 'https://www.businessinsider.com/job-search-return-to-office-remote-work-raises-promotions-2025-1', 'https://i.insider.com/6772cfa76e18b095615a7e01?width=1200&format=jpeg', '2025-01-05 10:16:01'),
(93, 'Maintaining and sustaining soil health', 'Photo by StockSnap, pixabay.com Talk Dirty to Me By Lewis Ziska Sign up for our monthly newsletter! “OK. There are more living organisms in one tablespoon of soil than there are people living on the earth.” S oil.  An immense, churning cauldron of living thin…', 'https://worldsensorium.com/talk-dirty-to-me-summary/', 'https://worldsensorium.com/wp-content/uploads/2024/12/IsaacLarsen.jpg', '2025-01-15 14:42:45'),
(94, 'Corn Syrup Took over America', 'Corporate welfare has propped up high fructose corn syrup for decades. It’s unlikely to end anytime soon.', 'https://thehustle.co/originals/how-corn-syrup-took-over-america#article', 'https://20627419.fs1.hubspotusercontent-na1.net/hubfs/20627419/Daily%20Newsletter%20Images/Daily%20Images/Jan%2012%202025/Sunday-sugar-share-iamge.png', '2025-01-13 19:56:47'),
(95, 'Bird flu detected in Arizona wastewater. Here\'s what you need to know', 'Arizona currently has no confirmed human cases of bird flu, although two Pinal County workers were exposed through infected poultry in December.', 'https://www.azcentral.com/story/news/local/arizona-health/2024/12/30/bird-flu-found-in-arizona-wastewater/77328608007/', 'https://s.yimg.com/ny/api/res/1.2/oTe5n15Qv3Ds1v8mNDdNdw--/YXBwaWQ9aGlnaGxhbmRlcjt3PTEyMDA7aD03NzI-/https://media.zenfs.com/en/the_arizona_republic_natl_articles_580/401ddfec86d970d81f0da98df1b311ea', '2024-12-31 01:22:47'),
(96, 'Man says two of his cats died after drinking raw milk recalled for bird flu', 'A California man says his two cats died and a third was hospitalized after he fed them raw milk recalled for bird flu risk', 'https://abcnews.go.com/Health/wireStory/california-man-cats-died-after-drinking-raw-milk-117596463', 'https://i.abcnewsfe.com/a/214f8f52-e19e-4398-8e93-f99b1675cf2e/wirestory_c3f6201216efb2a7e98ca143329a631a_16x9.jpg?w=1600', '2025-01-12 14:15:28'),
(97, 'How climate whiplash contributed to the severity of the California fires', 'Hydroclimate whiplash -- the rapid shift between wet and dry conditions -- likely contributed to the severity of the wildfires in Southern California, experts say.', 'https://abcnews.go.com/US/climate-whiplash-contributed-severity-california-fires/story?id=117621139', 'https://i.abcnewsfe.com/a/2de06b0e-65ad-468d-a555-93a80954979b/calif-fire31-sh-ml-250108_1736358844131_hpMain_16x9.jpg?w=1600', '2025-01-14 23:49:03'),
(98, 'Assembly to discuss recycling used nappies', 'DUP MLA Michelle McIlveen says more must be done to deal with the disposal of nappies in Northern Ireland.', 'https://www.bbc.com/news/articles/c2039rvwv9yo?xtor=AL-72-%5Bpartner%5D-%5Byahoo.north.america%5D-%5Bheadline%5D-%5Bnews%5D-%5Bbizdev%5D-%5Bisapi%5D', 'https://media.zenfs.com/en/bbc_us_articles_995/981ef8e4b0de7e3d2d3ed8fae51aae19', '2025-01-27 07:22:40'),
(99, 'Low-cost system will improve communications among industrial machines', 'Researchers have found a low-power, inexpensive way for large numbers of devices, such as machines in factories and equipment in labs, to share information by efficiently using signals at untapped high frequencies. The technology is an advanced version of a d…', 'https://www.sciencedaily.com/releases/2025/01/250108144023.htm', 'https://www.sciencedaily.com/images/scidaily-icon.png', '2025-01-08 20:40:23'),
(838, 'Vote du budget au Sénat: le bio fait lui aussi les frais de l’austérité', 'L’Agence Bio, chargée de la promotion du label « Agriculture biologique », voit son avenir compromis après le vote d’un amendement vendredi 17 janvier. Derrière ce texte : le sénateur et agriculteur de la FNSEA Laurent Duplomb.', 'https://www.mediapart.fr/journal/politique/200125/vote-du-budget-au-senat-le-bio-fait-lui-aussi-les-frais-de-l-austerite', 'https://static.mediapart.fr/etmagine/og/journal/files/2025/01/20/250120-vote-du-budget-au-senat-le-bio-fait-lui-aussi-les-frais-de-l-austerite-budgetaire-politiques.jpg', '2025-01-20 19:33:21'),
(839, 'Vote du budget au Sénat: le bio fait lui aussi les frais de l’austérité budgétaire', 'L’Agence Bio, chargée de la promotion du label « Agriculture biologique », voit son avenir compromis après le vote d’un amendement vendredi 17 janvier. Derrière ce texte : le sénateur et agriculteur de la FNSEA Laurent Duplomb.', 'https://www.mediapart.fr/journal/politique/200125/vote-du-budget-au-senat-le-bio-fait-lui-aussi-les-frais-de-l-austerite-budgetaire', 'https://static.mediapart.fr/etmagine/og/journal/files/2025/01/20/250120-vote-du-budget-au-senat-le-bio-fait-lui-aussi-les-frais-de-l-austerite-budgetaire-politiques.jpg', '2025-01-20 19:33:21'),
(2308, 'Discovery of a unique drainage and irrigation system that gave way to the \'Neolithic Revolution\' in the Amazon', 'A pre-Columbian society in the Amazon developed a sophisticated agricultural engineering system that allowed them to produce maize throughout the year, according to a recent discovery. This finding contradicts previous theories that dismissed the possibility …', 'https://www.sciencedaily.com/releases/2025/01/250129115228.htm', 'https://www.sciencedaily.com/images/scidaily-icon.png', '2025-01-29 17:52:28'),
(2684, 'Bernie Sanders to RFK Jr.: Do You Recognize This Anti-Vaxxer Baby Onesie?', 'It was just one of many questions that Kennedy seemed unprepared to answer during his Senate confirmation hearing.', 'https://gizmodo.com/bernie-sanders-to-rfk-jr-do-you-recognize-this-anti-vaxxer-baby-onesie-2000556438', 'https://gizmodo.com/app/uploads/2025/01/Robert-F.-Kennedy-Jr.-at-his-confirmation-hearing.jpg', '2025-01-29 23:05:38');
INSERT INTO `news` (`id`, `title`, `description`, `url`, `image`, `published_at`) VALUES
(2738, 'How China could retaliate against Trump\'s tariffs', 'Beijing may ratchet up trade restrictions or change its monetary policy.', 'https://www.businessinsider.com/us-china-trump-trade-war-tariffs-retaliation-counter-measures-2025-1', 'https://i.insider.com/678149e28951662c9f1f9a65?width=1200&format=jpeg', '2025-01-30 01:00:02'),
(2753, 'USDA Inspector General Who Refused to Leave Post Escorted From Office by Security', 'Phyllis Fong was heading up an investigation into Elon Musk\'s Neuralink.', 'https://gizmodo.com/usda-inspector-general-who-refused-to-leave-post-escorted-from-office-by-security-2000556605', 'https://gizmodo.com/app/uploads/2024/09/trump-tie-crooked.jpg', '2025-01-29 22:20:34'),
(3177, 'USDA orders removal of climate change mentions from public websites', 'The U.S. Department of Agriculture has directed officials to remove content related to climate change from its public websites, according to emails obtained by ABC News.', 'https://abcnews.go.com/US/usda-orders-removal-climate-change-mentions-public-websites/story?id=118312216', 'https://i.abcnewsfe.com/a/7297fe88-b5ed-4e04-86f2-a668d010bd57/department-of-agriculture-sign-gty-jt-250131_1738343304340_hpMain_16x9.jpg?w=1600', '2025-01-31 20:20:11'),
(3188, 'Federal workers assured the buyout offer is \'valid, lawful, and will be honored\'', 'Federal workers received emails from top officials at their agencies informing them that the resignation offers they received are \"valid, lawful, and will be honored.\"', 'https://abcnews.go.com/Politics/federal-workers-told-offer-paid-september-resign-valid/story?id=118317566', 'https://i.abcnewsfe.com/a/f1569f2b-1360-4544-b4be-1c05e3b4efc7/management-gty-er-250131_1738350952879_hpMain_16x9.jpg?w=1600', '2025-01-31 21:10:51'),
(3207, 'Not too hard, not too soft, rotting fruit is just right - for fruit fly maggots', 'It turns out, a maggot\'s preference for rotting fruit has as much to do with texture as taste. Researchers are looking into figuring out why and what neurons are responsible.', 'https://www.npr.org/2025/02/01/nx-s1-5281436/not-too-hard-not-too-soft-rotting-fruit-is-just-right-for-fruit-fly-maggots', 'https://npr.brightspotcdn.com/dims3/default/strip/false/crop/2121x1193+0+110/resize/1400/quality/100/format/jpeg/?url=http%3A%2F%2Fnpr-brightspot.s3.amazonaws.com%2Ffa%2Fa1%2F1cb669934212853c521e90017967%2Fgettyimages-1952668040.jpg', '2025-02-01 12:45:00'),
(3268, 'USDA, DOGE demand states hand over personal data about food stamp recipients', 'The Department of Agriculture is demanding sensitive data from states about more than 40 million food stamp recipients, as DOGE is amassing data for immigration enforcement.', 'https://www.npr.org/2025/05/09/nx-s1-5389952/usda-snap-doge-data-immigration', 'https://npr.brightspotcdn.com/dims3/default/strip/false/crop/4903x2758+0+0/resize/1400/quality/100/format/jpeg/?url=http%3A%2F%2Fnpr-brightspot.s3.amazonaws.com%2F58%2F3c%2Fa416e52d42e999ab925de6861ce7%2Fgettyimages-2200077442.jpg', '2025-05-09 21:55:04'),
(3269, 'Trump’s Tariffs Are Threatening America’s Apple Juice Supply Chain', 'Most of the apple juice Americans drink is imported, with a large share coming from China. Experts say families should expect to start paying higher prices for the beloved beverage.', 'https://www.wired.com/story/apple-juice-shortage-tariffs/', 'https://media.wired.com/photos/6812934a8f16f415836a2072/191:100/w_1280,c_limit/Apple-Juice-Shortage-Business-2211147875.jpg', '2025-05-06 13:00:00'),
(3270, 'Apply to our program for startups using AI to improve U.S. infrastructure.', 'Today, we’re opening applications for this year’s Google for Startups AI Academy: American Infrastructure cohort.Designed for Seed to Series A startups using AI in critical industries such as agriculture, cybersecurity, healthcare, transportation, housing, ed…', 'https://blog.google/feed/google-for-startups-ai-academy-america-infrastructure-apply/', 'https://storage.googleapis.com/gweb-uniblog-publish-prod/images/Copy_of_20230420-GFS_Miami-4484.max-1440x810.jpg', '2025-04-21 16:00:00'),
(3271, 'A New Bee Crisis Could Make Your Food Scarce and Expensive', 'Scientists are racing to stop a tiny mite that could devastate the pollinators and agriculture', 'https://www.scientificamerican.com/article/a-new-bee-crisis-could-make-your-food-scarce-and-expensive/', 'https://static.scientificamerican.com/dam/m/1246526879aaf02e/original/sa0525Nord01.jpg?m=1744054642.457&w=1200', '2025-04-15 15:00:00'),
(3272, 'Federal judge orders USDA to unfreeze funds to Maine', 'The funds had been initially withheld following President Trump\'s clash with Maine Gov. Janet Mills over the issue of transgender athletes.', 'https://www.npr.org/2025/04/12/nx-s1-5362976/maine-usda-unfreeze-janet-mills-trump', 'https://npr.brightspotcdn.com/dims3/default/strip/false/crop/5630x3167+0+293/resize/1400/quality/100/format/jpeg/?url=http%3A%2F%2Fnpr-brightspot.s3.amazonaws.com%2Ff9%2F13%2F770e4a87491988802a236cec7a67%2Fap22293666726782.jpg', '2025-04-12 17:14:18'),
(3273, 'Development, agriculture present risks for drinking water quality', 'Converting forest land to urban development or agricultural use can present risks to water quality when done near streams or river sources. This study examined data from 15 water treatment plants in the Middle Chattahoochee watershed to model the impacts of f…', 'https://www.sciencedaily.com/releases/2025/05/250506131518.htm', 'https://www.sciencedaily.com/images/scidaily-icon.png', '2025-05-06 19:15:18'),
(3274, 'Draft Executive Order Outlines Plan To Integrate AI Into K-12 Schools', 'A draft executive order from the Trump administration proposes integrating AI into K-12 education by directing federal agencies to promote AI literacy, train teachers, and establish public-private partnerships. \"The draft is marked \'predecisional\' and could b…', 'https://news.slashdot.org/story/25/04/23/2112226/draft-executive-order-outlines-plan-to-integrate-ai-into-k-12-schools', 'https://a.fsdn.com/sd/topics/education_64.png', '2025-04-24 02:20:00'),
(3275, 'California Becomes the World\'s Fourth-Largest Economy, Overtaking Japan', '\"Only the United States, China and Germany have larger economies than California,\" reports CNN. \n\nIn fact, they add that California \"outpaced all three countries with growth of 6% last year,\" according to the California governor\'s office (which cites new data…', 'https://news.slashdot.org/story/25/04/26/0625244/california-becomes-the-worlds-fourth-largest-economy-overtaking-japan', 'https://a.fsdn.com/sd/topics/usa_64.png', '2025-04-26 20:34:00'),
(3276, 'Howard Lutnick Calls Out EU Over Beef Restrictions: \'Unbelievable—They Won\'t Take Our Chicken, Our Lobsters, Or Our Corn\'', 'Commerce Secretary Howard Lutnick on April 3 didn\'t hold back as he slammed the European Union\'s long-standing restrictions on American agricultural exports....', 'https://finance.yahoo.com/news/howard-lutnick-calls-eu-over-141704195.html', 'https://s.yimg.com/cv/apiv2/social/images/yahoo_default_logo-1200x1200.png', '2025-04-14 16:17:04'),
(3277, 'Scientists Are Sounding the Alarm Over Trump’s ‘Emergency’ Forest Logging Order', 'The executive action weakens environmental review and public input in favor of industrial-scale tree cutting—despite science showing it won’t stop wildfires.', 'https://gizmodo.com/scientists-are-sounding-the-alarm-over-trumps-emergency-forest-logging-order-2000595753', 'https://gizmodo.com/app/uploads/2025/04/national-forest-trump.jpg', '2025-04-30 13:00:31'),
(3278, 'Border crossings, egg prices and jobs - Trump\'s speech fact-checked', 'BBC Verify has looked into some of the claims made by the US president during his speech in Michigan.', 'https://www.bbc.com/news/articles/cy5rd35wg4ro', 'https://ichef.bbci.co.uk/news/1024/branded_news/ec61/live/a8eb0ab0-2576-11f0-b26b-ab62c890638b.jpg', '2025-04-30 08:50:55'),
(3279, 'Trump wants to set up a self-deportation program that involves giving immigrants \'some money and a plane ticket\' to get out of the US', '\"If they are good, if we want them back in, we are going to work with them to get them back in as quickly as we can,\" Trump said.', 'https://www.businessinsider.com/trump-wants-to-start-a-self-deportation-program-for-immigrants-2025-4', 'https://i.insider.com/67ff4987a466d2b74ab346ad?width=1200&format=jpeg', '2025-04-16 10:36:31'),
(3280, 'California\'s economy becomes the fourth largest in the world', 'Three countries rank higher than California in GDP: the United States, China, and Germany.', 'https://www.businessinsider.com/california-economy-fourth-largest-japan-us-china-germany-2025-4', 'https://i.insider.com/680fdff53fe8d392836448d1?width=1200&format=jpeg', '2025-04-29 17:36:51'),
(3281, 'Preparing for the Next Pandemic', 'While the COVID-19 pandemic wasn’t an experience anyone wants to repeat, infections disease experts like [Dr. Pardis Sabeti] are looking at what we can do to prepare for the next one. While t…', 'https://hackaday.com/2025/05/02/preparing-for-the-next-pandemic/', 'https://hackaday.com/wp-content/uploads/2025/04/Bird-Flu-is-Here-YouTube-0-0-40.jpeg', '2025-05-02 17:30:36'),
(3282, 'Trump administration says it is suing Maine over transgender athletes in girls\' sports', 'The DOJ says Maine is violating Title IX, the 1972 law that prohibits sex-based discrimination at schools that receive federal funding. Gov. Janet Mills has promised to \"vigorously defend\" the state.', 'https://www.npr.org/2025/04/16/nx-s1-5366648/trump-justice-department-maine-transgender-athletes-lawsuit', 'https://npr.brightspotcdn.com/dims3/default/strip/false/crop/5890x3313+0+307/resize/1400/quality/100/format/jpeg/?url=http%3A%2F%2Fnpr-brightspot.s3.amazonaws.com%2F33%2F32%2Fcf90f6d84d91b0d8e95437f60a7f%2Fap25106494790236.jpg', '2025-04-16 19:52:52'),
(3283, 'U.S. Vice President JD Vance arrives in India for a 4-day visit', 'Vance arrived in India on Monday for a four-day visit as New Delhi looks to avoid U.S. tariffs, negotiate a bilateral trade deal with Washington and strengthen ties with the Trump administration.', 'https://www.npr.org/2025/04/21/g-s1-61541/vance-india-visit', 'https://npr.brightspotcdn.com/dims3/default/strip/false/crop/5357x3013+0+279/resize/1400/quality/100/format/jpeg/?url=http%3A%2F%2Fnpr-brightspot.s3.amazonaws.com%2F13%2F6b%2Fed428b1f46468e0b8e945dbce5c3%2Fap25111124089556.jpg', '2025-04-21 08:03:16'),
(3284, 'Top 10 fields to land a six-figure starting salary', 'Your chances of landing a six-figure starting salary are higher if you\'re looking in fields like nursing and consulting.', 'https://www.businessinsider.com/fields-six-figure-starting-salaries-consulting-nursing-program-management-2025-4', 'https://i.insider.com/680bc52fa466d2b74ab43384?width=1200&format=jpeg', '2025-04-27 10:01:01'),
(3285, 'Farmers devastated by worst potato harvest in over 30 years — here\'s what\'s driving the collapse', 'Consumers likely felt the impact at grocery stores, where a reduced supply can drive up prices.', 'https://www.yahoo.com/news/farmers-devastated-worst-potato-harvest-110006906.html', 'https://s.yimg.com/ny/api/res/1.2/sHbUiWEz5eQHqyOZ61s4yg--/YXBwaWQ9aGlnaGxhbmRlcjt3PTEyMDA7aD04MDA-/https://media.zenfs.com/en/the_cool_down_737/2bbd5812731ead502d20bccba902ac59', '2025-04-20 13:00:06'),
(3286, 'Police: Boilermaker Special\'s left front tire blew, causing fatal crash', 'The force of the impact between Purdue\'s Boilermaker Special with a southbound car split the car in two, killing the car\'s driver.', 'https://www.jconline.com/story/news/local/purdue/2025/04/25/police-boilermaker-specials-tire-blew-causing-fatal-crash/83270515007/', 'https://s.yimg.com/ny/api/res/1.2/Gvp6qti2LYasBg.GoF984w--/YXBwaWQ9aGlnaGxhbmRlcjt3PTEyMDA7aD02NjA-/https://media.zenfs.com/en/journal-courier/3c10480ef62f82f72b1fb875d476b622', '2025-04-25 18:03:38'),
(3287, 'Climate Change Is Straining Pakistan’s Water. Tensions With India Could Make It Worse', 'Pakistan\'s water supply is already strained by climate change. India\'s threats could exacerbate the crisis.', 'https://time.com/7284470/india-pakistan-water-supply-climate-change/', 'https://api.time.com/wp-content/uploads/2025/05/pakistan-water.jpg?quality=85&w=1024&h=628&crop=1', '2025-05-09 17:59:22'),
(3288, 'Indicateurs agricoles', '/ Démographie, Monde, Alimentation, Environnement, Pollution, Agriculture, Agroalimentaire - Espace et territoire\n / Démographie, Monde, Alimentation, Environnement, Pollution, Agriculture, Agroalimentaire - Espace et territoire', 'https://www.monde-diplomatique.fr/cartes/indicateurs-agricoles', 'https://www.monde-diplomatique.fr/local/cache-gd2/d9/1aa1a2eaadb8d3684588c17044d9bc.png?1674237207', '2025-04-18 19:29:52'),
(3289, 'Cancer-Causing Arsenic Is Building Up in the World’s Rice', 'Rice feeds more than half of the world’s population. Climate change is loading the beloved grain with arsenic, creating a “scary” health burden.', 'https://gizmodo.com/cancer-causing-arsenic-is-building-up-in-the-worlds-rice-2000591855', 'https://gizmodo.com/app/uploads/2025/04/rice-crops-china-1024x683.jpg', '2025-04-20 16:00:38'),
(3290, 'Accaparement des terres agricoles', '/ Monde, Commerce, Impérialisme, Agriculture, Géographie, Spéculation - Espace et territoire\n / Monde, Commerce, Impérialisme, Agriculture, Géographie, Spéculation - Espace et territoire', 'https://www.monde-diplomatique.fr/cartes/accaparement-terres', 'https://www.monde-diplomatique.fr/local/cache-gd2/ca/7cae6c7737ea09cc26ba33e6ecda99.png?1674237038', '2025-04-18 17:29:48'),
(3291, 'Word of the Week: A brief history of Coachella — the festival and the place', 'When you think of Coachella, you probably picture the festival. But there\'s much more to know about the place it calls home.', 'https://www.npr.org/2025/04/16/nx-s1-5365781/coachella-festival-valley-history', 'https://npr.brightspotcdn.com/dims3/default/strip/false/crop/3000x1688+0+158/resize/1400/quality/100/format/jpeg/?url=http%3A%2F%2Fnpr-brightspot.s3.amazonaws.com%2F2d%2F87%2F36697f9b49ecb37eac8bc62d850d%2Fgettyimages-946379568.jpg', '2025-04-16 11:00:00'),
(3292, 'Robotic gripper uses tape measure as inspiration to hold delicate objects', 'Robotic gripper uses tape measure as inspiration to hold delicate objectsImagine a robot delicately plucking ripe tomatoes from a vine or carefully selecting a fragile piece of fruit without causing a single bruise. This could...', 'https://www.yankodesign.com/2025/04/21/robotic-gripper-uses-tape-measure-as-inspiration-to-hold-delicate-objects/', 'https://www.yankodesign.com/images/design_news/2025/04/robotic-gripper-uses-tape-measure-as-inspiration-to-hold-delicate-objects/grip-01.jpg', '2025-04-21 12:30:07'),
(3293, 'The false climate solution that just won’t die', 'On Tuesday, a pair of documentaries landed on Amazon Prime that put forth a rather bold claim: By simply making a few tweaks to how we farm, humanity can reverse climate change and all but eliminate a host of other problems stemming from our modern food syste…', 'https://www.vox.com/future-perfect/409940/regenerative-agriculture-kiss-the-ground-common-ground', 'https://platform.vox.com/wp-content/uploads/sites/2/2025/04/GettyImages-1348953776.jpg?quality=90&strip=all&crop=0%2C10.732984293194%2C100%2C78.534031413613&w=1200', '2025-04-22 23:34:19'),
(3294, 'Marjorie Taylor Greene declines to challenge Jon Ossoff in Georgia Senate race', 'U.S. Rep. Marjorie Taylor Greene said Friday she won\'t challenge Democratic Sen. Jon Ossoff of Georgia in next year\'s midterms, delivering relief for some...', 'https://www.yahoo.com/news/marjorie-taylor-greene-declines-challenge-005550094.html', 'https://s.yimg.com/ny/api/res/1.2/t32iDbNxmdNUSazrrNIhRw--/YXBwaWQ9aGlnaGxhbmRlcjt3PTEyMDA7aD04MDA-/https://media.zenfs.com/en/ap.org/6bcd0f580477da1b80e29b7706e69c91', '2025-05-10 02:55:50'),
(3295, 'Quality Through Sustainability: How Illy\'s Regenerative Practices Create Award-Winning Brazilian Coffee', 'Read more about illycaffe’s approach to regenerative agriculture in the interview below Christopher Marquis: I know the idea of regenerative agriculture is becoming mo...', 'https://www.forbes.com/sites/christophermarquis/2025/04/17/quality-through-sustainability-how-illys-regenerative-practices-create-award-winning-brazilian-coffee/', 'https://imageio.forbes.com/specials-images/imageserve/67eefcb5ac6362a1d0f3dd98/0x0.jpg?format=jpg&height=900&width=1600&fit=bounds', '2025-04-17 13:24:25'),
(3296, 'India-Pakistan tensions escalate after deadly Kashmir attack', 'A day after India suspended a water-sharing treaty and downgraded diplomatic ties with Pakistan, authorities in Islamabad closed airspace to Indian aircraft and suspended all trade with India.', 'https://www.npr.org/2025/04/24/g-s1-62469/india-pakistan-kashmir-attack-tensions', 'https://npr.brightspotcdn.com/dims3/default/strip/false/crop/4155x2337+0+216/resize/1400/quality/100/format/jpeg/?url=http%3A%2F%2Fnpr-brightspot.s3.amazonaws.com%2F74%2Fd3%2F6b28e43c4680aaea5bb38cbe640f%2Fgettyimages-2211089200.jpg', '2025-04-24 19:26:55'),
(3297, 'Is it \"Made in USA\"? The answer can be complicated', 'In a global economy, something called \"substantial transformation\" comes into play when the U.S. determines where a product is made.', 'https://www.npr.org/2025/04/14/nx-s1-5359054/made-in-usa-tariff-label-country-origin', 'https://npr.brightspotcdn.com/dims3/default/strip/false/crop/5756x3238+0+254/resize/1400/quality/100/format/jpeg/?url=http%3A%2F%2Fnpr-brightspot.s3.amazonaws.com%2F86%2Fdd%2F8297e02f4fa3ad4b7c475fc875ab%2Fgettyimages-2203134896.jpg', '2025-04-14 11:00:00'),
(3298, 'Federal workers aren\'t sure if Elon Musk is done with DOGE — but they hope they\'re done with \'5 bullets\' emails', 'Elon Musk said he\'s stepping back from DOGE to focus on Tesla. Federal workers wonderif this is the end of their weekly accomplishments emails.', 'https://www.businessinsider.com/fed-workers-react-musk-retreat-doge-focus-on-tesla-2025-4', 'https://i.insider.com/6809525ba466d2b74ab3fd24?width=1024&format=jpeg', '2025-04-24 10:21:02'),
(3299, 'I moved from Colorado to Portugal and pivoted from my career in tech to start an olive oil business', 'Tech founder Nader Akhnoukh left the US and moved his family to Portugal. He started an oilve oil company and has fallen in love with the country.', 'https://www.businessinsider.com/left-us-portugal-olive-oil-business-2025-4', 'https://i.insider.com/67f938a7a466d2b74ab2ef92?width=1200&format=jpeg', '2025-04-12 11:15:02'),
(3300, 'I was furloughed from my global public health job due to the USAID freeze. Foreign aid makes the US safer and stronger.', 'American soft power is threatened as USAID pauses programs, says Kirsten Weeks, a global public health leader with over 25 years\' experience.', 'https://www.businessinsider.com/usaid-contractor-global-health-leader-strategic-foresight-soft-power-2025-4', 'https://i.insider.com/6802a6403fe8d392836385fb?width=1200&format=jpeg', '2025-04-20 11:15:02'),
(3301, 'How bacteria use sneaky chemistry to disable plant defenses', 'In the microscopic battlefield of plant-microbe interactions, plants are constantly fighting off invading bacteria. New research reveals just how clever these bacterial invaders can be.', 'https://www.sciencedaily.com/releases/2025/04/250421163114.htm', 'https://www.sciencedaily.com/images/scidaily-icon.png', '2025-04-21 22:31:14'),
(3302, 'How Racism In Agriculture Built America\'s Food Apartheid', 'They were never part of the safety net For generations, Black farmers have been left out of subsidies, loans, and access to land.', 'https://www.forbes.com/sites/sonariglinton/2025/04/29/how-racism-in-agriculture-built-americas-food-apartheid/', 'https://imageio.forbes.com/specials-images/imageserve/6811596af436f4de490339a9/0x0.jpg?format=jpg&height=900&width=1600&fit=bounds', '2025-04-30 01:17:03'),
(3303, 'N.C. Highway Wildflowers Attract Key Agriculture Industry Pollinators', 'N.C. Department of Transportation highway crews compete for planting best wildflowers in open road spaces that benefits agriculture and creates habitat for pollinators.', 'https://www.forbes.com/sites/noelfletcher/2025/04/30/nc-highway-wildflowers-create-key-agriculture-industry-pollinators/', 'https://imageio.forbes.com/specials-images/imageserve/6812dbe6a3ef8c466db5bc53/0x0.jpg?format=jpg&height=900&width=1600&fit=bounds', '2025-05-01 04:43:23'),
(3304, 'ClayPonic V1 Is A 3D-Printed Clay Hydroponics System Revolutionizing Urban Farming', 'ClayPonic V1 Is A 3D-Printed Clay Hydroponics System Revolutionizing Urban FarmingEcoTech Lab, under the leadership of architect Logman Arja, has unveiled ClayPonic V1—a forward-thinking, sustainable urban farming system that challenges conventional approache…', 'https://www.yankodesign.com/2025/04/15/clayponic-v1-is-a-3d-printed-clay-hydroponics-system-revolutionizing-urban-farming/', 'https://www.yankodesign.com/images/design_news/2025/04/clayponic/clayponic_yanko_design_08.jpg', '2025-04-15 23:30:58'),
(3305, 'China ha hecho lo que la industria global más temía: bloquear la exportación de las tierras raras más valiosas', 'Durante muchos años China ha producido más del 90% de las tierras raras. Australia, Vietnam, Myanmar, Canadá, Brasil, Tanzania o EEUU, entre otros países, también producen estos metales, pero los mayores depósitos localizados hasta ahora de estos elementos re…', 'https://www.xataka.com/materiales/china-ha-hecho-que-industria-global-temia-bloquear-exportacion-tierras-raras-valiosas', 'https://i.blogs.es/9ba6e1/tierrasraras-ap/840_560.jpeg', '2025-04-14 15:31:41'),
(3306, 'Trump tariffs: US farmers struggle while shrimpers see hope', 'Wisconsin soybean exports plummet as South Carolina seafood industry finds new opportunity amid trade tensions.', 'https://abcnews.go.com/US/trump-tariffs-us-farmers-struggle-shrimpers-hope/story?id=121337088', 'https://i.abcnewsfe.com/a/4fc0b54e-15fd-4130-9f84-ecb7e6220bd2/wisconsin-1-abc-er-250430_1746052982762_hpMain_16x9.jpg?w=1600', '2025-05-01 01:15:02'),
(3307, 'How California’s farmers can recharge the aquifers they’ve drained', 'Agriculture requires a lot of water. In the drought-stricken Central Valley, farmers and researchers are teaming up on a solution.', 'http://grist.org/food-and-agriculture/california-groundwater-study-central-valley-drought-managed-aquifer-recharge/', 'https://grist.org/wp-content/uploads/2025/05/central-valley-water.jpg?quality=75&strip=all', '2025-05-02 09:30:00'),
(3308, 'Climate Change Is Putting Everyone’s Livelihood at Stake, Says Sabrina Elba', 'Sabrina Elba, a Goodwill ambassador for the U.N. speaks to TIME about the importance of supporting farmers in the Global South.', 'https://time.com/7277808/sabrina-elba-climate-change-global-south/', 'https://api.time.com/wp-content/uploads/2025/04/sabrina-elba.jpg?quality=85&w=1024&h=628&crop=1', '2025-04-15 14:00:00'),
(3309, 'Bill Gates Will Close Gates Foundation by 2045, Give Fortune to Global Health', 'The Microsoft founder will double the amount of money he gives away and close the Gates Foundation earlier than planned.', 'https://time.com/7283920/bill-gates-foundation-global-health/', 'https://api.time.com/wp-content/uploads/2025/05/bill-gates.jpg?quality=85&w=1024&h=628&crop=1', '2025-05-08 19:27:15'),
(3310, 'Farm robot autonomously navigates, harvests among raised beds', 'A researcher has developed an autonomous driving algorithm for agricultural robots used for greenhouse cultivation and other farm work.', 'https://www.sciencedaily.com/releases/2025/04/250416135909.htm', 'https://www.sciencedaily.com/images/scidaily-icon.png', '2025-04-16 19:59:09'),
(3311, 'Land-use drives energy dynamics of boreal lake food webs', 'Lake ecosystems can receive high inputs of terrestrial organic matter (t-OM) that microbes make available to higher trophic level consumers. A research group examined terrestrial reliance of 19 consumer groups from 35 boreal lakes using stable isotopes of hyd…', 'https://www.sciencedaily.com/releases/2025/04/250417145307.htm', 'https://www.sciencedaily.com/images/scidaily-icon.png', '2025-04-17 20:53:07'),
(3312, 'Inactive components in agricultural runoff may be hidden contributors to drinking water hazards', 'A new study reveals the impact of what might may be precursors to harmful contaminants in drinking water, formed during water disinfection.', 'https://www.sciencedaily.com/releases/2025/04/250415160355.htm', 'https://www.sciencedaily.com/images/scidaily-icon.png', '2025-04-15 22:03:55'),
(3313, 'Iraq farmers turn to groundwater to boost desert yield', 'Farmer Hadi Saheb cannot wait to see his wheat fields flourish in the heart of the desert after he tapped into groundwater reserves in water-starved Iraq.', 'https://phys.org/news/2025-04-iraq-farmers-groundwater-boost-yield.html', 'https://scx2.b-cdn.net/gfx/news/2025/iraqi-farmer-hadi-sahe.jpg', '2025-04-25 08:50:21'),
(3314, 'From Carbon Gases To Croissants: How Savor’s Animal-Free Butter Is Disrupting The Food Industry', 'Backed by Bill Gates’ Breakthrough Energy Ventures, Savor, has created the world’s first butter made from carbon, without relying on traditional agriculture or plants.', 'https://www.forbes.com/sites/chelseadavis/2025/04/29/from-carbon-gases-to-croissants-how-savors-animal-free-butter-is-disrupting-the-food-industry/', 'https://imageio.forbes.com/specials-images/imageserve/680f1220b4d5b76d9c41ad3e/0x0.jpg?format=jpg&height=900&width=1600&fit=bounds', '2025-04-30 04:03:09'),
(3315, 'From Words To Work: Generative AI’s Leap Into The Physical World', 'While much of the hype around GenAI has focused on content creation, its impact will also be felt in agriculture and the physical world.', 'https://www.forbes.com/councils/forbestechcouncil/2025/05/05/from-words-to-work-generative-ais-leap-into-the-physical-world/', 'https://imageio.forbes.com/specials-images/imageserve/6815264de9563422190c0d3a/0x0.jpg?format=jpg&height=900&width=1600&fit=bounds', '2025-05-05 15:00:00'),
(3316, 'Dick Durbin of Illinois, the Senate’s No. 2 Democrat, won\'t seek reelection to a sixth term in 2026', 'Democratic Sen. Dick Durbin of Illinois said Wednesday that he will not seek reelection in 2026, ending his more than four-decade career representing...', 'https://www.yahoo.com/news/dick-durbin-illinois-senate-no-152436599.html', 'https://s.yimg.com/ny/api/res/1.2/hmNdcoc5wJrUG5EKKByj3A--/YXBwaWQ9aGlnaGxhbmRlcjt3PTEyMDA7aD04MDA-/https://media.zenfs.com/en/ap.org/b77f81d404d062d4c6efdd7a3042b53f', '2025-04-23 17:24:36'),
(3317, 'MAGA supporters get the shock of their lives realizing that Trump\'s tariffs are bad for them, too', 'It’s finally time for the “find out” part of FAFO.', 'https://www.pride.com/politics/maga-angry-at-trump-tariffs', 'https://media.zenfs.com/en/pride_articles_642/43bba5def612c99254b3fc5c0a9822cc', '2025-04-29 23:34:42'),
(3318, 'Modi, Vance praise progress in trade talks as higher tariffs loom', 'US Vice-President JD Vance is currently on a four-day visit to India with his wife and three children.', 'https://www.bbc.com/news/articles/c1wdz5205ylo', 'https://ichef.bbci.co.uk/news/1024/branded_news/fc66/live/270c1f10-1f3c-11f0-b265-abe347419ae3.jpg', '2025-04-22 08:23:30'),
(3319, 'How Business and Finance Are Really Talking About Climate Change', 'At the Milken Global Conference, companies talk about protecting themselves from climate risks and how to prioritize investment.', 'https://time.com/7284639/milken-conference-business-finance-climate-change/', 'https://api.time.com/wp-content/uploads/2025/05/Milken-Conference-Beverly-Hills-climate-change.jpg?quality=85&w=1024&h=628&crop=1', '2025-05-10 12:03:53'),
(3320, 'New supplement could save pollen-starved beehives', 'Beekeepers in many regions are having a hard time of it, as their honeybees struggle to find enough pollen to sustain the colony. Scientists are now addressing that problem with a new nutritional supplement which is described as being like \"a PowerBar for bee…', 'https://newatlas.com/science/supplement-pollen-honeybees/', 'https://assets.newatlas.com/dims4/default/ec47d85/2147483647/strip/true/crop/1600x840+0+114/resize/1200x630!/quality/90/?url=http%3A%2F%2Fnewatlas-brightspot.s3.amazonaws.com%2F31%2Fb4%2Fc18a24bc42c79e3bf7b14805efd6%2Ftb-23.jpeg&na.image_optimisation=0', '2025-04-22 19:37:34'),
(3321, 'Hybrid Meat Is All the Rage. Here\'s What It Is and Why It\'s Worth Trying', 'A food scientist explains cultured and hybrid meats are the food of the future.', 'https://www.cnet.com/home/kitchen-and-household/hybrid-meat-is-all-the-rage-heres-what-it-is-and-why-its-worth-trying/', 'https://www.cnet.com/a/img/resize/34af75d3444e16d0c9da18fdfc341bc0ecce87a7/hub/2025/04/22/13040472-88e6-4eca-8737-799aed51cf64/screenshot-2025-04-22-at-7-56-25am.png?auto=webp&fit=crop&height=675&width=1200', '2025-04-22 15:26:00'),
(3322, 'India and Pakistan Remind Us We Need to Stop the Risk of Nuclear War', 'The U.S. needs to set an example for the rest of the world, by taking our nuclear missiles off hair trigger alert, and negotiating a reduction of our arsenal', 'https://www.scientificamerican.com/article/india-and-pakistan-remind-us-we-need-to-stop-the-risk-of-nuclear-war/', 'https://static.scientificamerican.com/dam/m/39194bbb34e1d530/original/nuclear-weapons-illo.jpg?m=1746715656.552&w=1200', '2025-05-08 18:00:00'),
(3323, 'Heavy metals contaminate up to 17% of world\'s arable land: Study', 'Up to 17% of cropland worldwide is contaminated with at least one type of toxic heavy metal, posing health risks to up to 1.4 billion people, scientists warned Thursday.', 'https://phys.org/news/2025-04-heavy-metals-contaminate-world-arable.html', 'https://scx2.b-cdn.net/gfx/news/hires/2025/arable-land.jpg', '2025-04-18 10:28:08'),
(3324, 'Watch: Dextrous robotic gripper uses measuring tape for fingers', 'Steel measuring tape is an interesting material, in that it\'s rigid enough to hold its shape when extended, but flexible enough that it gives way under pressure. Scientists have taken advantage of that dual nature in a clever new robotic gripper designed for …', 'https://newatlas.com/robotics/robotic-gripper-measuring-tape-fingers/', 'https://assets.newatlas.com/dims4/default/5f209e7/2147483647/strip/true/crop/942x495+0+67/resize/1200x630!/quality/90/?url=http%3A%2F%2Fnewatlas-brightspot.s3.amazonaws.com%2F24%2F93%2F90d5e21c431b851a38c521f12d41%2Fgravish-tape-gripper-rotator-thumb.jpeg', '2025-04-11 22:19:30'),
(3325, 'Fly Migration Is Essential to Our Ecosystem, Study Finds', 'Flies aren’t just decomposers—they’re also pollinators and pest predators. Researchers shows it’s time to appreciate these misunderstood insects.', 'https://www.mentalfloss.com/fly-migration-essential-to-ecosystem', 'https://images2.minutemediacdn.com/image/upload/c_crop,x_0,y_0,w_3508,h_1973/c_fill,w_1440,ar_1440:810,f_auto,q_auto,g_auto/images/GettyImages/mmsport/mentalfloss/01jrtj8qfcvdm6m7st6z.jpg', '2025-04-14 23:02:00'),
(3326, 'Inequality isn’t inevitable, according to ‘unprecedented’ archeology study', 'Researchers analyzed 50,000 ancient homes across six continents.\nThe post Inequality isn’t inevitable, according to ‘unprecedented’ archeology study appeared first on Popular Science.', 'https://www.popsci.com/science/inequality-archeology-study/', 'https://www.popsci.com/wp-content/uploads/2025/04/Gary-exposing-T925-floor-107.jpg?quality=85', '2025-04-14 21:00:00'),
(3327, 'Artificial oxygen supply in coastal waters: A hope with risks', 'Could the artificial introduction of oxygen revitalise dying coastal waters? While oxygenation approaches have already been proven successful in lakes, their potential side effects must be carefully analysed before they can be used in the sea. This is the con…', 'https://www.sciencedaily.com/releases/2025/05/250505121618.htm', 'https://www.sciencedaily.com/images/scidaily-icon.png', '2025-05-05 18:16:18'),
(3328, 'Severe drought in Africa persists and is expected to worsen', 'Large regions in northern, southern, and central-western Africa, as well as northern Madagascar, are experiencing severe drought conditions due to two or more years of lower-than-average rainfall and higher than usual temperatures. These are the findings of a…', 'https://phys.org/news/2025-04-severe-drought-africa-persists-worsen.html', 'https://scx2.b-cdn.net/gfx/news/hires/2025/africa-1.jpg', '2025-04-23 22:10:04'),
(3329, 'Senate Republicans and Reynolds reach ‘budget compromise’ that excludes House', 'While Iowa Gov. Kim Reynolds and Senate Republicans said Monday they have reached a “budget compromise” on how to fund the state heading into the 2026 fiscal...', 'https://www.siouxlandproud.com/news/iowa-news/senate-republicans-and-reynolds-reach-budget-compromise-that-excludes-house/', 'https://media.zenfs.com/en/kcau_sioux_city_articles_201/ada1d66f5e5c414de4f01d7a07069881', '2025-04-29 02:44:55'),
(3330, 'Sunner Museum / Atelier Alter Architects', 'As a leader in China\'s white-feathered broiler chicken industry, Sunner Group has established the largest broiler chicken breeding and processing industrial chain in the country. In response to this, the group plans to build an industry museum, which will not…', 'https://www.archdaily.com/1029586/sunner-museum-atelier-alter-architects', 'https://images.adsttc.com/media/images/680f/762c/52b0/7701/8782/3241/large_jpg/sunner-museum-atelier-alter-architects_2.jpg?1745843765', '2025-05-05 02:00:00'),
(3331, 'Trump Officials Give SNAP Benefits Update', 'Voice is AI-generated. Inconsistencies may occur.\nAgriculture Secretary Brooke Rollins and Health Secretary Robert F. Kennedy Jr. provided updates about the Supplemental Nutrition Assistance Program (SNAP) during Wednesday\'s Cabinet meeting at the White House…', 'https://biztoc.com/x/8a191d30b3f920a4', 'https://biztoc.com/cdn/8a191d30b3f920a4_s.webp', '2025-04-30 20:53:10'),
(3332, 'Bipartisan pair of senators applaud DOJ investigation into egg producers', 'Bipartisan pair of senators applaud DOJ investigation into egg producers over rising prices and want the department to look even further into the issue.', 'https://abcnews.go.com/Politics/bipartisan-pair-senators-applaud-doj-investigation-egg-producers/story?id=121614814', 'https://i.abcnewsfe.com/a/e41cfc9a-0f4b-4e3e-90ad-fdb86cee6a26/elizabeth-warren-gty-jt-250508_1746738987348_hpMain_16x9.jpg?w=1600', '2025-05-09 11:48:47'),
(3333, 'Researchers find new defense against hard-to-treat plant diseases', 'Researchers showed that some spinach defensins can confer similar protection to citrus and potatoes -- and possibly other crops. The effects show significant progress toward recovering yield and improving quality in diseased plants.', 'https://www.sciencedaily.com/releases/2025/05/250508161310.htm', 'https://www.sciencedaily.com/images/scidaily-icon.png', '2025-05-08 22:13:10'),
(3334, 'Sulfur runoff amplifies mercury concentrations in Florida Everglades', 'Sulfur from sugarcane crops is flowing into wetlands in the Florida Everglades, creating toxic methylmercury, which accumulates in fish, a new study finds.', 'https://www.sciencedaily.com/releases/2025/05/250508161315.htm', 'https://www.sciencedaily.com/images/scidaily-icon.png', '2025-05-08 22:13:15'),
(3335, 'Trump’s Tariffs May Risk U.S. Access to This Critical Mineral', 'Historically, empires have gone to great lengths to secure potash, a mineral critical to agricultural production.', 'https://time.com/7273094/trumps-tariffs-may-risk-access-to-this-critical-mineral/', 'https://api.time.com/wp-content/uploads/2025/03/potash-fertilizer.jpg?quality=85&w=1024&h=628&crop=1', '2025-04-15 19:08:57'),
(3336, 'Trump Officials Set to Meet With Chinese Negotiaters in Geneva. Don’t Expect a Trade Deal', 'Top negotiators for the world\'s two largest economies are meeting Saturday in Geneva, as Trump\'s tariffs disrupt global supply chains', 'https://time.com/7284269/china-trade-talks-trump/', 'https://api.time.com/wp-content/uploads/2025/05/GettyImages-2214077687.jpg?quality=85&w=1024&h=628&crop=1', '2025-05-09 13:00:00'),
(3337, 'Intensifying farmland can sometimes be worse for biodiversity than agricultural expansion, study finds', 'The intensification of existing farmland can sometimes be more harmful to local biodiversity than expanding the area covered by agricultural land, finds a new study led by University College London (UCL) researchers.', 'https://phys.org/news/2025-05-farmland-worse-biodiversity-agricultural-expansion.html', 'https://scx2.b-cdn.net/gfx/news/hires/2023/farmland.jpg', '2025-05-02 08:30:01'),
(3338, 'March 2025 Top 40 New CRAN Packages', 'In March, one hundred eighty-two new packages made it to CRAN. Here are my Top 40 picks in sixteen categories: Agriculture, Archaeology, Biology, Climate Modeling, Computational Methods, Data, Ecology, Epidemiology, Genomics, Machine Learning, M...\r\n\n\n\nContin…', 'https://www.r-bloggers.com/2025/04/march-2025-top-40-new-cran-packages/', 'https://rworks.dev/posts/march-2025-top-40-new-cran-packages/STCCGEV.png', '2025-04-30 02:00:00'),
(3339, 'Bad Buzz: Microplastics Are Affecting Bee Cognition', 'Inhaling and ingesting tiny bits of plastic are giving bees memory issues—and can even kill them.', 'https://www.mentalfloss.com/microplastics-in-bees', 'https://images2.minutemediacdn.com/image/upload/c_crop,x_0,y_124,w_4067,h_2287/c_fill,w_1440,ar_1440:810,f_auto,q_auto,g_auto/images/GettyImages/mmsport/mentalfloss/01jsyj21ntsm5mtq02zz.jpg', '2025-04-28 18:59:00'),
(3340, 'You Won’t Believe How Much Richer the Trumps Have Gotten This Year', 'Nicolle Wallace had Scott Galloway on her MSNBC show Thursday. She began by asking him what he makes of this moment in which we find ourselves. Galloway, a business professor and popular podcaster, could have zigged in any number of directions with that open-…', 'https://newrepublic.com/post/195068/trump-family-corruption-crypto-memecoin-richer', 'https://images.newrepublic.com/8f8e790b66e264e53d4f09ea266177f1dc34efcd.jpeg?w=1200&h=630&crop=faces&fit=crop&fm=jpg', '2025-05-09 17:08:15'),
(3341, 'Congress Keeps Trying to Overturn State Agriculture Laws', 'Whatever you think of tariffs, it should be clear that now is not the time to introduce more uncertainty into agricultural markets. The “Food Security and Farm Protection Act” (S. 1326) — recently introduced in the United State Sena...', 'https://www.americanthinker.com/articles/2025/05/congress_keeps_trying_to_overturn_state_agriculture_laws.html', 'https://images.americanthinker.com/uj/ujzprf22unr2mnvsesz1_800.JPG', '2025-05-01 06:00:00'),
(3342, 'Manufacturing jobs are never coming back', '“Jobs and factories will come roaring back into our country,” President Donald Trump promised on “Liberation Day,” as he announced tariffs that have shocked global markets and set the country on course for a recession. “We will supercharge our domestic indust…', 'https://www.vox.com/future-perfect/408949/manufacturing-jobs-tariffs-trump-trade-automation', 'https://platform.vox.com/wp-content/uploads/sites/2/2025/04/gettyimages-932877700.jpg?quality=90&strip=all&crop=0%2C10.732984293194%2C100%2C78.534031413613&w=1200', '2025-04-16 18:36:27'),
(3343, 'Hello, John Roberts. America’s D-Day is Coming. Whatcha Gonna Do?', 'As we approach the 100-day mark of Trump 2.0, we see, Lord knows, much to worry about. But one reassuring development has been that, by and large, the judicial branch has stood tough against the administration’s lawlessness. Federal judges James Boasberg and …', 'https://newrepublic.com/post/194144/john-roberts-trump-cases-abrego-garcia-birthright-citizenship', 'https://images.newrepublic.com/40b1788df208d10332b409336b462a16d5348751.jpeg?w=1200&h=630&crop=faces&fit=crop&fm=jpg', '2025-04-18 17:27:52'),
(3344, 'A Mayotte, Emmanuel Macron annonce un plan de « refondation » de l’archipel de plus de 3 milliards d’euros sur six ans', 'Le chef de l’Etat a présenté ce texte lors d’une visite dans l’archipel, où la reconstruction se fait attendre, quatre mois après le passage dévastateur du cyclone Chido. Le projet doit être entériné lundi soir par un conseil des ministres spécial en visiocon…', 'https://www.lemonde.fr/outre-mer/article/2025/04/21/a-mayotte-emmanuel-macron-annonce-un-plan-de-refondation-de-l-archipel-de-plus-de-3-milliards-d-euros-sur-six-ans_6598394_1840827.html', 'https://img.lemde.fr/2025/04/21/0/0/6753/4502/1440/960/60/0/72a4270_ftp-import-images-1-3ietrszo3pyo-5675866-01-06.jpg', '2025-04-21 17:04:28'),
(3345, 'Is Calavo Growers, Inc. (CVGW) the Best Agriculture Stock to Buy Right Now?', 'We recently published a list of 10 Best Agriculture Stocks to Buy According to Hedge Funds. In this article, we are going to take a look at where Calavo...', 'https://finance.yahoo.com/news/calavo-growers-inc-cvgw-best-083942041.html', 'https://s.yimg.com/ny/api/res/1.2/u_6Vpbu2VflpvnVyQ5dRMQ--/YXBwaWQ9aGlnaGxhbmRlcjt3PTEyMDA7aD02NzM-/https://media.zenfs.com/en/insidermonkey.com/7bea5054b8b9c25e05b017361beb8940', '2025-05-09 10:39:42'),
(3346, 'Actualité : \"Choose France for Science\" : les scientifiques américains invités par Macron à fuir Donald Trump', 'Emmanuel Macron lance une initiative majeure pour attirer les scientifiques du monde entier, notamment les chercheurs étasuniens, profitant du climat d’incertitude aux États-Unis depuis le retour de Donald Trump à la Maison Blanche.', 'https://www.lesnumeriques.com/science-espace/choose-france-for-science-les-scientifiques-americains-invites-par-macron-a-fuir-donald-trump-n235796.html', 'https://cdn.lesnumeriques.com/optim/news/23/235796/b295e38c-choose-france-for-science-les-scientifiques-americains-invites-par-macron-a-fuir-donald-trump__1200_678__overflow.jpg', '2025-04-19 15:45:00'),
(3347, 'Once bitten, animals develop resistance that shrinks tick population', 'Just in time for tick season, new research is shining a light on how animals develop resistance to tick bites, which points toward the possibility of developing more effective vaccines against the tiny, disease-carrying bloodsuckers.', 'https://www.sciencedaily.com/releases/2025/04/250430142956.htm', 'https://www.sciencedaily.com/images/scidaily-icon.png', '2025-04-30 20:29:56'),
(3348, 'Core77 Weekly Roundup (4-7-25 to 4-11-25)', 'Here\'s what we looked at this week:Design needed: These Mad-Max-esque solar-powered bikes and trikes from YongLe Risheng.Stunning drone show by Studio Hock: King Kong climbing the Empire State Building.\r\nHyundai\'s gaming-inspired Insteroid concept. The base m…', 'https://www.core77.com/posts/136238/Core77-Weekly-Roundup-4-7-25-to-4-11-25', 'https://s3files.core77.com/blog/images/lead_n_spotlight/1674537_lead_400_136238_.jpg', '2025-04-11 18:00:00'),
(3349, 'Trump Just Did the Most Corrupt Thing Any President Has Ever Done', 'Imagine that Joe Biden, just as he was assuming office, had started a new company with Hunter Biden and used his main social media account to recruit financial backers, then promised that the most generous among them would earn an invitation to a private dinn…', 'https://newrepublic.com/post/194420/trump-memecoin-dinner-corrupt-president', 'https://images.newrepublic.com/977151eb0e614cdfb4712957dbee3b781fd64386.jpeg?w=1200&h=630&crop=faces&fit=crop&fm=jpg', '2025-04-25 17:27:49'),
(3350, 'Corn leads to improved performance in lithium-sulfur batteries', 'Researchers have demonstrated a way to use corn protein to improve the performance of lithium-sulfur batteries, a finding that holds promise for expanding the use of the high-energy, lighter-weight batteries in electric vehicles, renewable energy storage and …', 'https://www.sciencedaily.com/releases/2025/04/250415143638.htm', 'https://www.sciencedaily.com/images/scidaily-icon.png', '2025-04-15 20:36:38'),
(3351, 'Nutrients strengthen link between precipitation and plant growth, study finds', 'A new study has investigated how the relationship between mean annual precipitation (MAP) and grassland biomass changes when one or more nutrients are added. The authors show that precipitation and nutrient availability are the key drivers of plant biomass, w…', 'https://www.sciencedaily.com/releases/2025/04/250417144856.htm', 'https://www.sciencedaily.com/images/scidaily-icon.png', '2025-04-17 20:48:56'),
(3352, 'I dreamt of running the family farm - but a childhood accident changed that', 'Agriculture is one of the most dangerous sectors in Northern Ireland, with about half of all workplace deaths happening on a farm.', 'https://www.bbc.com/news/articles/c0el718lgy1o', 'https://ichef.bbci.co.uk/news/1024/branded_news/d20b/live/45b8bd90-210a-11f0-b1ba-8bc47850ff39.jpg', '2025-04-25 07:46:11'),
(3353, 'Trump Agriculture Secretary Paints Alternative Reality: We\'re \'Making Farming Great Again\'', 'Trump Agriculture Secretary Brooke Rollins and former Trump adviser Kellyanne Conway with more \"alternative facts\" for the lemmings that believe Fox is \"news.\" ConJob was taking Hannity\'s place this Friday, and invited Rollins on to talk about what the admini…', 'https://crooksandliars.com/2025/04/trump-agriculture-secretary-paints', 'https://crooksandliars.com/files/primary_image/25/04/fox-conway-rollins-041825.png', '2025-04-20 15:30:01'),
(3354, 'What Actually Happens at the End of \'Trading Places\'? (2013)', 'A definitive answer to one of the most important questions in the history of finance.', 'https://www.npr.org/sections/money/2013/07/19/201430727/what-actually-happens-at-the-end-of-trading-places', 'https://media.npr.org/assets/img/2013/07/12/trading-places1_wide-3456f21e9b855355fc2e99ed10d92b01b49a9109.jpg?s=1400&c=100&f=jpeg', '2025-04-24 22:11:19'),
(3355, 'Trump Admin Scraps Plan to Limit Salmonella in Poultry', 'The Trump admin is rolling back a proposal that would have required poultry companies to limit salmonella bacteria to prevent food poisoning.', 'http://www.rollingstone.com/politics/politics-news/usda-salmonella-poultry-withdraw-biden-plan-1235325722/', 'https://www.rollingstone.com/wp-content/uploads/2025/04/usda-salmonella.jpg?w=1600&h=900&crop=1', '2025-04-26 04:58:13'),
(3356, 'Colombia\'s peatlands could be a crucial tool to fight climate change: But first we have to find them', 'Researchers conducted three years of extensive fieldwork to develop the first data-driven map of both newly documented and predicted peatlands across Colombia\'s eastern lowlands.', 'https://www.sciencedaily.com/releases/2025/04/250415160352.htm', 'https://www.sciencedaily.com/images/scidaily-icon.png', '2025-04-15 22:03:52'),
(3357, 'The last nomads of Nepal', 'The Raute face sharp population decline as they balance tradition and modern pressures.', 'https://www.aljazeera.com/gallery/2025/5/5/the-last-nomads-of-nepal', 'https://www.aljazeera.com/wp-content/uploads/2025/05/12991193-1746428910.jpg?resize=1920%2C1440', '2025-05-05 12:44:33'),
(3358, 'These are the biggest \'anti-environment\' policies enacted in Trump\'s 1st 100 days', 'President Donald Trump has enacted a sweeping number of policies that could harm the environment and hamper goals for greenhouse gas reductions, some experts say.', 'https://abcnews.go.com/US/biggest-anti-environment-policies-enacted-trumps-1st-100/story?id=121125789', 'https://i.abcnewsfe.com/a/caf36f77-9dd0-4bc6-994f-26a532d41052/environment-3-gty-er-250428_1745875564863_hpMain_16x9.jpg?w=1600', '2025-04-29 23:23:35'),
(3359, 'Bird flu is continuing to spread in animals across US. Here\'s what you need to know', 'Bird flu is continuing to spread in animals across the U.S. Here\'s what you need to know about the current situation.', 'https://abcnews.go.com/Health/bird-flu-continuing-spread-animals-us/story?id=121481973', 'https://i.abcnewsfe.com/a/d002551b-411b-4f8a-914d-44a26a41f152/h5n1-rendering-gty-jef-250505_1746470432591_hpMain_16x9.jpg?w=1600', '2025-05-05 23:06:33'),
(3360, 'Mexico agriculture minister says reached \'beneficial\' agreements with US counterpart', 'Mexican Agriculture Minister Julio Berdegue said on Tuesday he met his U.S. counterpart Brooke Rollins in a \"friendly\" meeting in Washington during which...', 'https://www.yahoo.com/news/mexico-agriculture-minister-says-reached-221835037.html', 'https://media.zenfs.com/en/reuters.com/ee3b95fa507e4d3c6d80d080e1cfad42', '2025-05-07 00:18:35'),
(3361, 'Agriculture isn\'t nearing trade war tariffs crisis, \'it is full blown crisis already\' farmers say', 'The clock is ticking on trade deals that the U.S. will need to strike with many nations, most notably China, to avoid what Trump’s Treasury Secretary has described as an “unsustainable” tariffs war.', 'https://www.nbcnews.com/business/economy/agriculture-isnt-nearing-trade-war-tariffs-crisis-full-blown-crisis-al-rcna203309', 'https://media-cldnry.s-nbcnews.com/image/upload/t_nbcnews-fp-1200-630,f_auto,q_auto:best/rockcms/2025-04/250428-us-china-pork-se-1122a-2da65f.jpg', '2025-04-28 17:26:51'),
(3362, 'Environmental groups say Trump administration violated their free-speech rights', 'A lawsuit alleges the Trump administration violated the free-speech rights of nonprofits and municipalities that have had federal funding for climate and environmental projects frozen or cancelled.', 'https://www.npr.org/2025/04/23/nx-s1-5369362/trump-funding-freeze-climate-environmental-justice-free-speech', 'https://npr.brightspotcdn.com/dims3/default/strip/false/crop/4000x2250+0+209/resize/1400/quality/100/format/jpeg/?url=http%3A%2F%2Fnpr-brightspot.s3.amazonaws.com%2F5f%2Fbf%2F3d03a6dc49db8cd0e91a417d46cc%2Fgettyimages-2208066154.jpg', '2025-04-23 13:47:03'),
(3363, '“Contrapasso” by Photographer Massimiliano Corteselli', 'Massimiliano Corteselli                                                                         Massimiliano Corteselli’s Website Massimiliano Corteselli on Instagram', 'https://www.booooooom.com/2025/05/05/contrapasso-by-photographer-massimiliano-corteselli/', 'https://cdn.booooooom.com/wp-content/uploads/2025/04/Contrapasso12.jpg', '2025-05-05 15:00:43');
INSERT INTO `news` (`id`, `title`, `description`, `url`, `image`, `published_at`) VALUES
(3364, 'The backdoor way to get a dirt-cheap mortgage rate on your next home', 'Assumable mortgages offer a rare win-win in real estate, helping buyers get cheaper monthly payments and sellers score higher prices on their homes.', 'https://www.businessinsider.com/homebuyers-lower-mortgage-rates-assumable-loans-real-estate-lock-in-2025-4', 'https://i.insider.com/680fd543c6ad288d147f5af3?width=1200&format=jpeg', '2025-04-30 10:04:02'),
(3366, 'Wealth inequality\'s deep roots in human prehistory', 'Wealth inequality began shaping human societies more than 10,000 years ago, long before the rise of ancient empires or the invention of writing. That\'s according to a new study that challenges traditional views that disparities in wealth emerged suddenly with…', 'https://www.sciencedaily.com/releases/2025/04/250414162044.htm', 'https://www.sciencedaily.com/images/scidaily-icon.png', '2025-04-14 22:20:44');

-- --------------------------------------------------------

--
-- Table structure for table `qna`
--

CREATE TABLE `qna` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `qna`
--

INSERT INTO `qna` (`id`, `question`, `answer`, `created_at`) VALUES
(126, 'hello dai', 'hjr', '2025-01-30 12:56:41'),
(127, 'hello', 'hjr', '2025-01-30 12:58:35'),
(128, 'sdfgh', 'fg', '2025-01-30 12:59:17'),
(129, 'dfn', 'sdfgh', '2025-01-30 12:59:37'),
(130, 'hello\r\n', 'hi how can i help you?', '2025-01-30 13:16:31'),
(131, 'hello\r\n', 'hjj', '2025-01-30 13:19:39'),
(132, 'hh', 'jhg', '2025-01-31 10:51:24'),
(133, 'j', 'jhg', '2025-01-31 11:01:31'),
(134, 'j', NULL, '2025-01-31 11:02:58'),
(135, 'j', NULL, '2025-01-31 11:03:07'),
(136, 'jhg', NULL, '2025-01-31 11:05:58');

-- --------------------------------------------------------

--
-- Table structure for table `sensor_data`
--

CREATE TABLE `sensor_data` (
  `id` int(11) NOT NULL,
  `ph_value` float NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sensor_data`
--

INSERT INTO `sensor_data` (`id`, `ph_value`, `timestamp`) VALUES
(1, 7, '2025-01-30 11:26:48');

-- --------------------------------------------------------

--
-- Table structure for table `smart_irrigation`
--

CREATE TABLE `smart_irrigation` (
  `id` int(11) NOT NULL,
  `real_time_temp` float NOT NULL,
  `moisture_level` float NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `smart_irrigation`
--

INSERT INTO `smart_irrigation` (`id`, `real_time_temp`, `moisture_level`, `timestamp`) VALUES
(0, 90.21, 74, '2025-01-30 04:38:21'),
(0, 70.57, 73, '2025-01-30 04:38:27'),
(0, 82.88, 73, '2025-01-30 04:38:35'),
(0, 6.59, 73, '2025-01-30 04:38:41'),
(0, 75.87, 74, '2025-01-30 04:38:47'),
(0, 70.4, 100, '2025-01-30 04:38:53'),
(0, 2.98, 21, '2025-01-30 04:39:00'),
(0, 1.56, 20, '2025-01-30 04:39:09'),
(0, 7.08, 93, '2025-01-30 04:39:14'),
(0, 4.91, 42, '2025-01-30 04:39:20'),
(0, 2.47, 67, '2025-01-30 04:39:25'),
(0, 1.25, 51, '2025-01-30 04:39:32'),
(0, 2.49, 52, '2025-01-30 04:39:40'),
(0, 0.83, 40, '2025-01-30 04:39:45'),
(0, 13.21, 39, '2025-01-30 04:39:51'),
(0, 2.22, 41, '2025-01-30 04:40:05'),
(0, 2.59, 42, '2025-01-30 04:40:10'),
(0, 2.17, 42, '2025-01-30 04:40:15'),
(0, 7.28, 90, '2025-01-30 04:40:21'),
(0, 7.06, 59, '2025-01-30 04:40:29'),
(0, 5.1, 68, '2025-01-30 04:40:34'),
(0, 6.25, 100, '2025-01-30 04:40:40'),
(0, 7.37, 100, '2025-01-30 04:40:45'),
(0, 5.98, 92, '2025-01-30 04:40:51'),
(0, 6.62, 91, '2025-01-30 04:41:00'),
(0, 6.42, 91, '2025-01-30 04:41:05'),
(0, 5.91, 91, '2025-01-30 04:41:10'),
(0, 68.4, 90, '2025-01-30 04:41:16'),
(0, 100, 91, '2025-01-30 04:41:21'),
(0, 49.57, 91, '2025-01-30 04:41:27'),
(0, 76.58, 91, '2025-01-30 04:41:32'),
(0, 89.84, 90, '2025-01-30 04:41:37'),
(0, 64.91, 91, '2025-01-30 04:41:43'),
(0, 52.14, 92, '2025-01-30 04:41:48'),
(0, 16.36, 92, '2025-01-30 04:41:58'),
(0, 59, 93, '2025-01-30 04:42:04'),
(0, 83.49, 92, '2025-01-30 04:42:09'),
(0, 90.16, 92, '2025-01-30 04:42:15'),
(0, 69.57, 92, '2025-01-30 04:42:21'),
(0, 87.16, 92, '2025-01-30 04:42:27'),
(0, 50.96, 92, '2025-01-30 04:42:32'),
(0, 89.72, 93, '2025-01-30 04:42:38'),
(0, 62.49, 93, '2025-01-30 04:42:43'),
(0, 10.35, 94, '2025-01-30 04:42:48'),
(0, 86.37, 93, '2025-01-30 04:42:53'),
(0, 50.57, 93, '2025-01-30 04:42:59'),
(0, 86.18, 92, '2025-01-30 04:43:04'),
(0, 64.42, 93, '2025-01-30 04:43:11'),
(0, 80.46, 94, '2025-01-30 04:43:20'),
(0, 61.17, 93, '2025-01-30 04:43:29'),
(0, 38.44, 94, '2025-01-30 04:44:07'),
(0, 12.11, 34, '2025-01-30 04:44:55'),
(0, 0.95, 33, '2025-01-30 04:45:03'),
(0, 5.03, 100, '2025-01-30 04:45:08'),
(0, 39.15, 52, '2025-01-30 04:45:17'),
(0, 5.54, 67, '2025-01-30 06:42:44'),
(0, 5.25, 68, '2025-01-30 06:42:50'),
(0, 13.41, 67, '2025-01-30 06:42:54'),
(0, 5.18, 67, '2025-01-30 06:42:55'),
(0, 4.93, 67, '2025-01-30 06:43:01'),
(0, 4.76, 66, '2025-01-30 06:43:06'),
(0, 5.27, 67, '2025-01-30 06:43:12'),
(0, 4.42, 68, '2025-01-30 06:43:18'),
(0, 4.84, 68, '2025-01-30 06:43:24'),
(0, 5.01, 67, '2025-01-30 06:43:29'),
(0, 4.27, 61, '2025-01-30 06:43:35'),
(0, 6.13, 99, '2025-01-30 06:43:40'),
(0, 7.79, 100, '2025-01-30 06:43:46'),
(0, 7.81, 100, '2025-01-30 06:43:52'),
(0, 68.86, 99, '2025-01-30 06:43:58'),
(0, 75.75, 100, '2025-01-30 06:44:06'),
(0, 66.52, 100, '2025-01-30 06:44:12'),
(0, 54.6, 99, '2025-01-30 06:44:18'),
(0, 79.85, 99, '2025-01-30 06:44:23'),
(0, 56, 19, '2025-01-30 06:44:28'),
(0, 1.05, 20, '2025-01-30 06:44:33'),
(0, 1.2, 20, '2025-01-30 06:44:38'),
(0, 1.25, 23, '2025-01-30 06:44:43'),
(0, 1.12, 26, '2025-01-30 06:44:49'),
(0, 1.25, 30, '2025-01-30 06:44:54'),
(0, 1.34, 32, '2025-01-30 06:44:59'),
(0, 1.59, 32, '2025-01-30 06:45:08'),
(0, 0.9, 33, '2025-01-30 06:45:13'),
(0, 1.12, 33, '2025-01-30 06:45:19'),
(0, 1.27, 32, '2025-01-30 06:45:25'),
(0, 1.1, 33, '2025-01-30 06:45:31'),
(0, 0.68, 33, '2025-01-30 06:45:39'),
(0, 1.25, 32, '2025-01-30 06:45:47'),
(0, 1.17, 32, '2025-01-30 06:45:55'),
(0, 0.9, 33, '2025-01-30 06:46:03'),
(0, 0.63, 33, '2025-01-30 06:46:19'),
(0, 0, 32, '2025-01-30 06:47:19'),
(0, 0.17, 33, '2025-01-30 06:47:29'),
(0, 0.22, 33, '2025-01-30 06:47:37'),
(0, 0, 33, '2025-01-30 06:47:40'),
(0, 0.24, 32, '2025-01-30 06:47:43'),
(0, 0.37, 34, '2025-01-30 06:47:48'),
(0, 0.2, 34, '2025-01-30 06:47:57'),
(0, 0, 33, '2025-01-30 06:48:15'),
(0, 0.12, 34, '2025-01-30 06:48:21'),
(0, 0.39, 33, '2025-01-30 06:48:27'),
(0, 0.17, 33, '2025-01-30 06:48:52'),
(0, 0.83, 34, '2025-01-30 06:48:54'),
(0, 0.39, 32, '2025-01-30 06:49:02'),
(0, 0.44, 35, '2025-01-30 06:49:08'),
(0, 0.46, 33, '2025-01-30 06:49:13'),
(0, 0.17, 33, '2025-01-30 06:49:22'),
(0, 3.05, 76, '2025-01-30 06:49:27'),
(0, 62.2, 74, '2025-01-30 06:49:32'),
(0, 44.3, 75, '2025-01-30 06:49:38'),
(0, 35.38, 63, '2025-01-30 06:49:43'),
(0, 3.37, 73, '2025-01-30 06:49:49'),
(0, 53.14, 74, '2025-01-30 06:49:54'),
(0, 84.57, 75, '2025-01-30 06:50:02'),
(0, 82.86, 74, '2025-01-30 06:51:10'),
(0, 11.45, 100, '2025-01-30 06:51:19'),
(0, 10.16, 22, '2025-01-30 06:51:24'),
(0, 0.85, 34, '2025-01-30 06:51:30'),
(0, 2.12, 55, '2025-01-30 06:51:35'),
(0, 1.73, 51, '2025-01-30 06:51:41'),
(0, 1.61, 51, '2025-01-30 06:51:46'),
(0, 1.81, 51, '2025-01-30 06:51:52'),
(0, 1.95, 51, '2025-01-30 06:51:57'),
(0, 1.81, 51, '2025-01-30 06:52:02'),
(0, 1.95, 50, '2025-01-30 06:52:08'),
(0, 2.12, 51, '2025-01-30 06:52:14'),
(0, 1.68, 47, '2025-01-30 06:52:19'),
(0, 1.68, 47, '2025-01-30 06:52:28'),
(0, 1.76, 47, '2025-01-30 06:52:34'),
(0, 2, 47, '2025-01-30 06:52:39'),
(0, 2.05, 47, '2025-01-30 06:52:44'),
(0, 1.59, 47, '2025-01-30 06:52:49'),
(0, 1.56, 45, '2025-01-30 06:52:55'),
(0, 2.05, 46, '2025-01-30 06:53:00'),
(0, 1.12, 41, '2025-01-30 06:53:05'),
(0, 1.17, 44, '2025-01-30 06:53:11'),
(0, 70.48, 100, '2025-01-30 06:59:23'),
(0, 89.47, 100, '2025-01-30 06:59:32'),
(0, 100, 100, '2025-01-30 06:59:48'),
(0, 60.71, 100, '2025-01-30 06:59:54'),
(0, 12.48, 100, '2025-01-30 07:00:32'),
(0, 52.33, 100, '2025-01-30 07:00:38'),
(0, 49.01, 17, '2025-01-30 07:00:47'),
(0, 7.86, 22, '2025-01-30 07:00:56'),
(0, 1.1, 32, '2025-01-30 07:01:02'),
(0, 1.05, 33, '2025-01-30 07:01:08'),
(0, 1, 34, '2025-01-30 07:01:13'),
(0, 0.78, 32, '2025-01-30 07:01:20'),
(0, 1.17, 34, '2025-01-30 07:01:26'),
(0, 0.76, 34, '2025-01-30 07:01:32'),
(0, 1, 34, '2025-01-30 07:01:40'),
(0, 0.93, 33, '2025-01-30 07:01:46'),
(0, 0.34, 33, '2025-01-30 07:01:55'),
(0, 1, 32, '2025-01-30 07:02:01'),
(0, 0.61, 34, '2025-01-30 07:02:06'),
(0, 3.47, 69, '2025-01-30 07:02:12'),
(0, 3.39, 71, '2025-01-30 07:02:17'),
(0, 97.29, 71, '2025-01-30 07:02:26'),
(0, 85.69, 70, '2025-01-30 07:02:35'),
(0, 13.14, 63, '2025-01-30 07:36:12'),
(0, 65.08, 20, '2025-01-30 07:36:28'),
(0, 1.78, 24, '2025-01-30 07:36:42'),
(0, 3.59, 59, '2025-01-30 07:36:44'),
(0, 4.2, 60, '2025-01-30 07:36:49'),
(0, 4.4, 61, '2025-01-30 07:36:55'),
(0, 3.76, 61, '2025-01-30 07:37:00'),
(0, 4.25, 62, '2025-01-30 07:37:05'),
(0, 3.93, 61, '2025-01-30 07:37:11'),
(0, 4.27, 61, '2025-01-30 07:37:16'),
(0, 3.52, 61, '2025-01-30 07:37:21'),
(0, 3.86, 61, '2025-01-30 07:37:26'),
(0, 3.52, 60, '2025-01-30 07:37:32'),
(0, 3.64, 60, '2025-01-30 07:37:37'),
(0, 3.76, 60, '2025-01-30 07:37:43'),
(0, 3.59, 60, '2025-01-30 07:37:48'),
(0, 3.59, 61, '2025-01-30 07:37:54'),
(0, 3.35, 60, '2025-01-30 07:37:59'),
(0, 3.37, 60, '2025-01-30 07:38:04'),
(0, 3.59, 61, '2025-01-30 07:38:09'),
(0, 3.15, 63, '2025-01-30 07:38:15'),
(0, 3.17, 63, '2025-01-30 07:38:21'),
(0, 2.98, 63, '2025-01-30 07:38:29'),
(0, 3.22, 63, '2025-01-30 07:38:34'),
(0, 3.08, 62, '2025-01-30 07:38:39'),
(0, 3.42, 63, '2025-01-30 07:38:45'),
(0, 3.44, 63, '2025-01-30 07:38:50'),
(0, 3.59, 63, '2025-01-30 07:38:55'),
(0, 3.52, 62, '2025-01-30 07:39:00'),
(0, 3.52, 62, '2025-01-30 07:39:05'),
(0, 3.86, 62, '2025-01-30 07:39:10'),
(0, 3.17, 62, '2025-01-30 07:39:15'),
(0, 2.86, 62, '2025-01-30 07:39:21'),
(0, 3.54, 62, '2025-01-30 07:39:26'),
(0, 3.08, 62, '2025-01-30 07:39:31'),
(0, 2.93, 61, '2025-01-30 07:39:36'),
(0, 3.49, 62, '2025-01-30 07:39:41'),
(0, 3.2, 62, '2025-01-30 07:39:47'),
(0, 3.69, 61, '2025-01-30 07:39:52'),
(0, 2.86, 62, '2025-01-30 07:40:00'),
(0, 2.78, 62, '2025-01-30 07:40:05'),
(0, 3.1, 62, '2025-01-30 07:40:10'),
(0, 3, 61, '2025-01-30 07:40:16'),
(0, 3.47, 61, '2025-01-30 07:40:21'),
(0, 3.2, 61, '2025-01-30 07:40:27'),
(0, 3.17, 61, '2025-01-30 07:40:33'),
(0, 2.98, 61, '2025-01-30 07:40:38'),
(0, 2.74, 61, '2025-01-30 07:40:44'),
(0, 2.86, 60, '2025-01-30 07:40:52'),
(0, 3.13, 60, '2025-01-30 07:40:57'),
(0, 2.91, 60, '2025-01-30 07:41:03'),
(0, 3.64, 60, '2025-01-30 07:41:08'),
(0, 3.42, 61, '2025-01-30 07:41:13'),
(0, 3.3, 60, '2025-01-30 07:41:18'),
(0, 3.57, 60, '2025-01-30 07:41:24'),
(0, 3.52, 60, '2025-01-30 07:41:29'),
(0, 3.57, 61, '2025-01-30 07:41:34'),
(0, 3.79, 60, '2025-01-30 07:41:39'),
(0, 3.66, 60, '2025-01-30 07:41:44'),
(0, 5.62, 89, '2025-01-30 07:42:00'),
(0, 92.5, 88, '2025-01-30 07:42:07'),
(0, 87.91, 89, '2025-01-30 07:42:14'),
(0, 61.61, 87, '2025-01-30 07:42:20'),
(0, 100, 87, '2025-01-30 07:42:26'),
(0, 88.84, 88, '2025-01-30 07:42:31'),
(0, 66.2, 87, '2025-01-30 07:42:37'),
(0, 85.93, 88, '2025-01-30 07:42:42'),
(0, 99.17, 87, '2025-01-30 07:42:48'),
(0, 87.84, 89, '2025-01-30 07:42:54'),
(0, 72.58, 88, '2025-01-30 07:42:59'),
(0, 12.92, 87, '2025-01-30 07:43:08'),
(0, 85.89, 86, '2025-01-30 07:43:13'),
(0, 97.58, 100, '2025-01-30 07:43:19'),
(0, 35.09, 23, '2025-01-30 07:43:24'),
(0, 1.86, 33, '2025-01-30 07:43:30'),
(0, 2.22, 33, '2025-01-30 07:43:35'),
(0, 2.12, 35, '2025-01-30 07:43:40'),
(0, 15.58, 100, '2025-01-30 09:09:26'),
(0, 100, 100, '2025-01-30 09:09:32'),
(0, 69.13, 100, '2025-01-30 09:09:37'),
(0, 75.82, 100, '2025-01-30 09:09:43'),
(0, 81.59, 100, '2025-01-30 09:09:49'),
(0, 78.8, 100, '2025-01-30 09:09:54'),
(0, 77.05, 100, '2025-01-30 09:10:00'),
(0, 74.95, 100, '2025-01-30 09:10:06'),
(0, 79.83, 100, '2025-01-30 09:10:12'),
(0, 79.29, 100, '2025-01-30 09:10:17'),
(0, 92.28, 100, '2025-01-30 09:10:23'),
(0, 97.7, 100, '2025-01-30 09:10:28'),
(0, 100, 100, '2025-01-30 09:10:34'),
(0, 68.3, 100, '2025-01-30 09:10:39'),
(0, 82.71, 100, '2025-01-30 09:10:44'),
(0, 14.04, 100, '2025-01-30 09:10:52'),
(0, 85.62, 100, '2025-01-30 09:10:57'),
(0, 17.26, 100, '2025-01-30 19:30:37'),
(0, 78.12, 100, '2025-01-30 19:30:42'),
(0, 86.57, 100, '2025-01-30 19:30:47'),
(0, 77.75, 100, '2025-01-30 19:30:52'),
(0, 75.46, 100, '2025-01-30 19:30:59'),
(0, 86.91, 100, '2025-01-30 19:31:04'),
(0, 68.35, 22, '2025-01-30 19:31:09'),
(0, 9.3, 100, '2025-01-30 19:31:14'),
(0, 64.4, 21, '2025-01-30 19:31:20'),
(0, 3.76, 20, '2025-01-30 19:31:34'),
(0, 3.35, 23, '2025-01-30 19:31:36'),
(0, 3.91, 28, '2025-01-30 19:31:41'),
(0, 4.05, 30, '2025-01-30 19:31:49'),
(0, 4.32, 31, '2025-01-30 19:31:56'),
(0, 3.59, 31, '2025-01-30 19:32:01'),
(0, 3.47, 33, '2025-01-30 19:32:07'),
(0, 4.3, 31, '2025-01-30 19:32:12'),
(0, 4.05, 32, '2025-01-30 19:32:25'),
(0, 3.74, 33, '2025-01-30 19:32:27'),
(0, 3.64, 33, '2025-01-30 19:32:32'),
(0, 3.93, 33, '2025-01-30 19:32:37'),
(0, 3.66, 33, '2025-01-30 19:32:43'),
(0, 2.22, 32, '2025-01-30 19:32:52'),
(0, 3.39, 33, '2025-01-30 19:33:08'),
(0, 3.25, 33, '2025-01-30 19:33:14'),
(0, 2.74, 30, '2025-01-30 19:33:19'),
(0, 3.22, 33, '2025-01-30 19:33:24'),
(0, 3.44, 33, '2025-01-30 19:33:29'),
(0, 3.3, 34, '2025-01-30 19:33:34'),
(0, 3.1, 32, '2025-01-30 19:33:40'),
(0, 3.22, 34, '2025-01-30 19:33:45'),
(0, 2.71, 32, '2025-01-30 19:33:50'),
(0, 3.25, 31, '2025-01-30 19:33:55'),
(0, 3.54, 35, '2025-01-30 19:34:00'),
(0, 3.25, 32, '2025-01-30 19:34:05'),
(0, 3.52, 33, '2025-01-30 19:34:10'),
(0, 3.52, 34, '2025-01-30 19:34:15'),
(0, 3.37, 32, '2025-01-30 19:34:21'),
(0, 3.13, 33, '2025-01-30 19:34:26'),
(0, 3.76, 34, '2025-01-30 19:34:31'),
(0, 3.42, 34, '2025-01-30 19:34:36'),
(0, 3.39, 32, '2025-01-30 19:34:41'),
(0, 3.52, 32, '2025-01-30 19:34:46'),
(0, 3.13, 32, '2025-01-30 19:34:51'),
(0, 3.54, 33, '2025-01-30 19:34:56'),
(0, 79.63, 21, '2025-01-30 22:28:52'),
(0, 3.57, 26, '2025-01-30 22:28:58'),
(0, 3.79, 29, '2025-01-30 22:29:03'),
(0, 3.76, 31, '2025-01-30 22:29:08'),
(0, 4.2, 32, '2025-01-30 22:29:14'),
(0, 3.25, 33, '2025-01-30 22:29:19'),
(0, 3.86, 33, '2025-01-30 22:29:25'),
(0, 3.27, 33, '2025-01-30 22:29:30'),
(0, 3.83, 32, '2025-01-30 22:29:36'),
(0, 3.37, 32, '2025-01-30 22:29:41'),
(0, 3.74, 32, '2025-01-30 22:29:47'),
(0, 3.42, 32, '2025-01-30 22:29:53'),
(0, 3.66, 32, '2025-01-30 22:29:58'),
(0, 3.3, 34, '2025-01-30 22:30:04'),
(0, 3.05, 33, '2025-01-30 22:30:09'),
(0, 3.03, 33, '2025-01-30 22:30:15'),
(0, 3.44, 33, '2025-01-30 22:30:20'),
(0, 2.76, 34, '2025-01-30 22:30:26'),
(0, 2.86, 34, '2025-01-30 22:30:32'),
(0, 3.47, 33, '2025-01-30 22:30:37'),
(0, 3.1, 34, '2025-01-30 22:30:43'),
(0, 3.08, 33, '2025-01-30 22:30:48'),
(0, 3.35, 32, '2025-01-30 22:30:54'),
(0, 2.76, 34, '2025-01-30 22:31:00'),
(0, 3.22, 35, '2025-01-30 22:31:05'),
(0, 2.71, 33, '2025-01-30 22:31:11'),
(0, 3.3, 32, '2025-01-30 22:31:17'),
(0, 16.19, 100, '2025-01-31 09:55:01'),
(0, 76.43, 100, '2025-01-31 09:55:06'),
(0, 89.04, 100, '2025-01-31 09:55:11'),
(0, 51.67, 12, '2025-01-31 09:55:16'),
(0, 3.47, 19, '2025-01-31 09:55:21'),
(0, 2.86, 17, '2025-01-31 09:55:26'),
(0, 3.13, 19, '2025-01-31 09:55:32'),
(0, 3.25, 21, '2025-01-31 09:55:37'),
(0, 3.3, 27, '2025-01-31 09:55:42'),
(0, 3.54, 30, '2025-01-31 09:55:48'),
(0, 10.55, 18, '2025-01-31 10:04:08'),
(0, 3.57, 17, '2025-01-31 10:04:13'),
(0, 3.81, 21, '2025-01-31 10:04:18'),
(0, 4.4, 29, '2025-01-31 10:04:24'),
(0, 4.27, 32, '2025-01-31 10:04:29'),
(0, 8.99, 100, '2025-01-31 10:04:34'),
(0, 74.63, 17, '2025-01-31 10:04:39'),
(0, 3.96, 32, '2025-01-31 10:04:44'),
(0, 3.93, 32, '2025-01-31 10:04:49'),
(0, 16, 100, '2025-01-31 11:30:03'),
(0, 84.76, 100, '2025-01-31 11:30:08'),
(0, 72.28, 19, '2025-01-31 11:30:13'),
(0, 2.52, 18, '2025-01-31 11:30:19'),
(0, 3.05, 19, '2025-01-31 11:30:24'),
(0, 3.13, 22, '2025-01-31 11:30:29'),
(0, 3.17, 29, '2025-01-31 11:30:34'),
(0, 2.52, 31, '2025-01-31 11:30:39'),
(0, 2.66, 31, '2025-01-31 11:30:44'),
(0, 2.47, 32, '2025-01-31 11:30:49'),
(0, 2.34, 32, '2025-01-31 11:30:54'),
(0, 2.08, 33, '2025-01-31 11:30:59'),
(0, 1.95, 33, '2025-01-31 11:31:04'),
(0, 2.03, 33, '2025-01-31 11:31:09'),
(0, 2.05, 33, '2025-01-31 11:31:14'),
(0, 1.93, 32, '2025-01-31 11:31:20'),
(0, 1.86, 33, '2025-01-31 11:31:25'),
(0, 1.78, 33, '2025-01-31 11:31:30'),
(0, 1.59, 34, '2025-01-31 11:31:35'),
(0, 1.73, 33, '2025-01-31 11:31:40'),
(0, 1.51, 33, '2025-01-31 11:31:45'),
(0, 1.56, 34, '2025-01-31 11:31:50'),
(0, 1.51, 33, '2025-01-31 11:31:55'),
(0, 1.51, 33, '2025-01-31 11:32:00'),
(0, 1.42, 33, '2025-01-31 11:32:05'),
(0, 1.29, 32, '2025-01-31 11:32:10'),
(0, 1.22, 34, '2025-01-31 11:32:15'),
(0, 1.29, 34, '2025-01-31 11:32:20'),
(0, 1.15, 33, '2025-01-31 11:32:25'),
(0, 1.15, 34, '2025-01-31 11:32:30'),
(0, 1.05, 34, '2025-01-31 11:32:35'),
(0, 1.17, 33, '2025-01-31 11:32:40'),
(0, 1.17, 34, '2025-01-31 11:32:45'),
(0, 1.17, 33, '2025-01-31 11:32:51'),
(0, 1.1, 33, '2025-01-31 11:32:56'),
(0, 1.34, 34, '2025-01-31 11:33:01'),
(0, 1.03, 33, '2025-01-31 11:33:06'),
(0, 1.12, 34, '2025-01-31 11:33:11'),
(0, 1.17, 33, '2025-01-31 11:33:16'),
(0, 1.05, 34, '2025-01-31 11:33:21'),
(0, 0.9, 34, '2025-01-31 11:33:26'),
(0, 1.03, 34, '2025-01-31 11:33:31'),
(0, 1, 34, '2025-01-31 11:33:36'),
(0, 1.95, 33, '2025-01-31 11:33:41'),
(0, 2.27, 34, '2025-01-31 11:33:46'),
(0, 2.03, 35, '2025-01-31 11:33:51'),
(0, 1, 33, '2025-01-31 11:33:56'),
(0, 0.95, 33, '2025-01-31 11:34:01'),
(0, 1.03, 33, '2025-01-31 11:34:06'),
(0, 1.2, 35, '2025-01-31 11:34:11'),
(0, 1.2, 34, '2025-01-31 11:34:17'),
(0, 0.63, 34, '2025-01-31 11:34:22'),
(0, 0.88, 34, '2025-01-31 11:34:27'),
(0, 0.83, 33, '2025-01-31 11:34:32'),
(0, 0.85, 34, '2025-01-31 11:34:37'),
(0, 0.88, 34, '2025-01-31 11:34:42'),
(0, 0.76, 35, '2025-01-31 11:34:47'),
(0, 0.83, 33, '2025-01-31 11:34:52'),
(0, 1.17, 35, '2025-01-31 11:34:57'),
(0, 1.39, 34, '2025-01-31 11:35:02'),
(0, 1.15, 33, '2025-01-31 11:35:07'),
(0, 1.2, 34, '2025-01-31 11:35:12'),
(0, 1.56, 34, '2025-01-31 11:35:17'),
(0, 1.88, 35, '2025-01-31 11:35:22'),
(0, 1.56, 35, '2025-01-31 11:35:27'),
(0, 1.78, 34, '2025-01-31 11:35:32'),
(0, 1.29, 35, '2025-01-31 11:35:37'),
(0, 1.07, 34, '2025-01-31 11:35:42'),
(0, 1.15, 33, '2025-01-31 11:35:47'),
(0, 0.95, 34, '2025-01-31 11:35:52'),
(0, 0.88, 35, '2025-01-31 11:35:57'),
(0, 0.9, 35, '2025-01-31 11:36:02'),
(0, 0.83, 33, '2025-01-31 11:36:07'),
(0, 0.76, 35, '2025-01-31 11:36:12'),
(0, 0.93, 34, '2025-01-31 11:36:18'),
(0, 0.73, 34, '2025-01-31 11:36:23'),
(0, 0.81, 35, '2025-01-31 11:36:28'),
(0, 0.73, 34, '2025-01-31 11:36:33'),
(0, 0.73, 35, '2025-01-31 11:36:38'),
(0, 0.76, 35, '2025-01-31 11:36:43'),
(0, 0.78, 35, '2025-01-31 11:36:48'),
(0, 0.71, 35, '2025-01-31 11:36:53'),
(0, 0.83, 33, '2025-01-31 11:36:58'),
(0, 0.76, 35, '2025-01-31 11:37:03'),
(0, 0.63, 35, '2025-01-31 11:37:08'),
(0, 0.71, 35, '2025-01-31 11:37:13'),
(0, 0.73, 34, '2025-01-31 11:37:18'),
(0, 0.66, 34, '2025-01-31 11:37:23'),
(0, 0.63, 35, '2025-01-31 11:37:28'),
(0, 0.54, 34, '2025-01-31 11:37:33'),
(0, 1.17, 35, '2025-01-31 11:37:38'),
(0, 1.12, 35, '2025-01-31 11:37:43'),
(0, 0.83, 35, '2025-01-31 11:37:48'),
(0, 1.44, 35, '2025-01-31 11:37:53'),
(0, 1.54, 35, '2025-01-31 11:37:58'),
(0, 1.17, 35, '2025-01-31 11:38:03'),
(0, 0.95, 34, '2025-01-31 11:38:08'),
(0, 0.78, 35, '2025-01-31 11:38:14'),
(0, 0.66, 34, '2025-01-31 11:38:19'),
(0, 0.66, 35, '2025-01-31 11:38:24'),
(0, 0.63, 35, '2025-01-31 11:38:29'),
(0, 0.85, 34, '2025-01-31 11:38:34'),
(0, 0.73, 35, '2025-01-31 11:38:39'),
(0, 0.66, 35, '2025-01-31 11:38:44'),
(0, 0.63, 34, '2025-01-31 11:38:49'),
(0, 0.59, 34, '2025-01-31 11:38:54'),
(0, 0.93, 34, '2025-01-31 11:38:59'),
(0, 0.76, 35, '2025-01-31 11:39:04'),
(0, 0.71, 36, '2025-01-31 11:39:09'),
(0, 1.03, 35, '2025-01-31 11:39:14'),
(0, 0.76, 35, '2025-01-31 11:39:19'),
(0, 0.46, 35, '2025-01-31 11:39:24'),
(0, 0.81, 35, '2025-01-31 11:39:29'),
(0, 0.71, 34, '2025-01-31 11:39:34'),
(0, 0.61, 35, '2025-01-31 11:39:39'),
(0, 9.77, 18, '2025-01-31 11:45:28'),
(0, 2, 21, '2025-01-31 11:45:33'),
(0, 2.37, 33, '2025-01-31 11:45:41'),
(0, 2.12, 33, '2025-01-31 11:45:50'),
(0, 1.98, 34, '2025-01-31 11:45:57'),
(0, 2.88, 35, '2025-01-31 11:46:02'),
(0, 2.81, 34, '2025-01-31 11:46:07'),
(0, 3, 34, '2025-01-31 11:46:13'),
(0, 1.73, 35, '2025-01-31 11:46:28'),
(0, 6.11, 100, '2025-01-31 11:46:35'),
(0, 74.38, 100, '2025-01-31 11:46:41'),
(0, 56.68, 19, '2025-01-31 11:46:47'),
(0, 1.22, 31, '2025-01-31 11:46:52'),
(0, 1.47, 40, '2025-01-31 11:46:57'),
(0, 83.22, 26, '2025-01-31 11:47:12'),
(0, 0.83, 32, '2025-01-31 11:47:31'),
(0, 0.83, 31, '2025-01-31 11:47:39'),
(0, 0.78, 32, '2025-01-31 11:47:46'),
(0, 0.81, 32, '2025-01-31 11:47:54'),
(0, 0.95, 32, '2025-01-31 11:48:02'),
(0, 0.81, 32, '2025-01-31 11:48:10'),
(0, 0.71, 32, '2025-01-31 11:48:15'),
(0, 0.78, 30, '2025-01-31 11:48:29'),
(0, 0.66, 31, '2025-01-31 11:48:33'),
(0, 0.61, 32, '2025-01-31 11:48:44'),
(0, 0.54, 31, '2025-01-31 11:48:51'),
(0, 0.76, 32, '2025-01-31 11:48:57'),
(0, 0.54, 31, '2025-01-31 11:49:02'),
(0, 0.76, 33, '2025-01-31 11:49:17'),
(0, 0.88, 31, '2025-01-31 11:49:23'),
(0, 0.54, 31, '2025-01-31 11:49:28'),
(0, 0.63, 33, '2025-01-31 11:49:33'),
(0, 0.88, 32, '2025-01-31 11:49:38'),
(0, 0.81, 32, '2025-01-31 11:49:43'),
(0, 0.73, 33, '2025-01-31 11:49:48'),
(0, 0.63, 32, '2025-01-31 11:49:53'),
(0, 0.66, 32, '2025-01-31 11:49:59'),
(0, 0.56, 31, '2025-01-31 11:50:04'),
(0, 0.61, 31, '2025-01-31 11:50:12'),
(0, 0.66, 31, '2025-01-31 11:50:19'),
(0, 0.42, 32, '2025-01-31 11:50:25'),
(0, 10.55, 17, '2025-01-31 12:06:58'),
(0, 8.47, 100, '2025-01-31 12:07:03'),
(0, 71.87, 100, '2025-01-31 12:07:08'),
(0, 83.64, 90, '2025-01-31 12:07:13'),
(0, 77.75, 88, '2025-01-31 12:07:18'),
(0, 67.28, 89, '2025-01-31 12:07:23');

-- --------------------------------------------------------

--
-- Table structure for table `soil_health`
--

CREATE TABLE `soil_health` (
  `id` int(11) NOT NULL,
  `ph_min` decimal(3,1) DEFAULT NULL,
  `ph_max` decimal(3,1) DEFAULT NULL,
  `nitrogen` varchar(50) DEFAULT NULL,
  `phosphorus` varchar(50) DEFAULT NULL,
  `potassium` varchar(50) DEFAULT NULL,
  `recommendations` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `soil_health`
--

INSERT INTO `soil_health` (`id`, `ph_min`, `ph_max`, `nitrogen`, `phosphorus`, `potassium`, `recommendations`) VALUES
(1, '4.0', '5.0', 'Low', 'Low', 'Low', 'Add lime to increase pH, use compost and organic fertilizers.'),
(2, '5.1', '6.0', 'Moderate', 'Moderate', 'Low', 'Apply balanced NPK fertilizer, use organic matter like manure.'),
(3, '6.1', '7.0', 'High', 'High', 'Moderate', 'Ideal pH for most crops, maintain organic matter and proper irrigation.'),
(4, '7.1', '8.0', 'Moderate', 'Moderate', 'High', 'Use sulfur to lower pH if needed, add organic compost for balance.'),
(5, '8.1', '9.0', 'Low', 'High', 'High', 'Use elemental sulfur or gypsum to reduce alkalinity, increase organic matter.');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created_at`) VALUES
(1, 'dev', '$2y$10$nhur4x0flbPGIEp7PuUkAumWgYlM7PjbgVwPTdwQVH.6SgsrSBIAK', '2025-01-29 12:37:43'),
(2, 'Dhiru', '$2y$10$4aJfihwIcot5cA9Smk8b8.oS816G6GIaBscYpW7542rJh8vtQS8YO', '2025-01-29 20:18:26'),
(3, 'raja', '$2y$10$NM4fLcg1ADjyQK/8LWY8kurl.lJcAMkVu13UA/l2CjYSrPYumwux6', '2025-05-12 14:53:13');

-- --------------------------------------------------------

--
-- Table structure for table `waste_mgt`
--

CREATE TABLE `waste_mgt` (
  `id` int(11) NOT NULL,
  `dust1` tinyint(1) NOT NULL CHECK (`dust1` in (0,1)),
  `dust2` tinyint(1) NOT NULL CHECK (`dust2` in (0,1)),
  `dust3` tinyint(1) NOT NULL CHECK (`dust3` in (0,1)),
  `dust4` tinyint(1) NOT NULL CHECK (`dust4` in (0,1)),
  `dust5` tinyint(1) NOT NULL CHECK (`dust5` in (0,1)),
  `dust6` tinyint(1) NOT NULL CHECK (`dust6` in (0,1)),
  `dust7` tinyint(1) NOT NULL CHECK (`dust7` in (0,1)),
  `dust8` tinyint(1) NOT NULL CHECK (`dust8` in (0,1)),
  `dust9` tinyint(1) NOT NULL CHECK (`dust9` in (0,1)),
  `dust10` tinyint(1) NOT NULL CHECK (`dust10` in (0,1))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `waste_mgt`
--

INSERT INTO `waste_mgt` (`id`, `dust1`, `dust2`, `dust3`, `dust4`, `dust5`, `dust6`, `dust7`, `dust8`, `dust9`, `dust10`) VALUES
(522, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(523, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(524, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(525, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(526, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(527, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(528, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(529, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(530, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(531, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `weather_data`
--

CREATE TABLE `weather_data` (
  `id` int(11) NOT NULL,
  `city` varchar(100) NOT NULL,
  `country` varchar(10) DEFAULT NULL,
  `temperature` decimal(5,2) DEFAULT NULL,
  `humidity` int(11) DEFAULT NULL,
  `wind_speed` decimal(5,2) DEFAULT NULL,
  `weather_description` varchar(255) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `weather_data`
--

INSERT INTO `weather_data` (`id`, `city`, `country`, `temperature`, `humidity`, `wind_speed`, `weather_description`, `timestamp`) VALUES
(1, 'Kathmandu', 'NP', '9.12', 87, '1.54', 'few clouds', '2025-01-30 20:52:53'),
(2, 'Kathmandu', 'NP', '9.12', 87, '1.54', 'few clouds', '2025-01-30 20:53:53'),
(3, 'Kathmandu', 'NP', '9.12', 87, '1.54', 'few clouds', '2025-01-30 20:55:05'),
(4, 'Janakpur Dham', 'NP', '13.07', 68, '1.20', 'clear sky', '2025-01-30 20:55:21'),
(5, 'Janakpur Dham', 'NP', '13.07', 68, '1.20', 'clear sky', '2025-01-30 20:55:23'),
(6, 'Janakpur Dham', 'NP', '13.07', 68, '1.20', 'clear sky', '2025-01-30 20:55:23'),
(7, 'Janakpur Dham', 'NP', '13.07', 68, '1.20', 'clear sky', '2025-01-30 20:55:23'),
(8, 'Janakpur Dham', 'NP', '13.07', 68, '1.20', 'clear sky', '2025-01-30 20:55:26'),
(9, 'Janakpur Dham', 'NP', '13.07', 68, '1.20', 'clear sky', '2025-01-30 20:55:26'),
(10, 'Janakpur Dham', 'NP', '13.07', 68, '1.20', 'clear sky', '2025-01-30 20:55:26'),
(11, 'Janakpur Dham', 'NP', '13.07', 68, '1.20', 'clear sky', '2025-01-30 20:55:26'),
(12, 'Janakpur Dham', 'NP', '13.07', 68, '1.20', 'clear sky', '2025-01-30 21:00:45'),
(13, 'Janakpur Dham', 'NP', '13.07', 68, '1.20', 'clear sky', '2025-01-30 21:00:59'),
(14, 'Kathmandu', 'NP', '9.12', 87, '1.54', 'few clouds', '2025-01-30 21:01:09'),
(15, 'Kathmandu', 'NP', '9.12', 87, '1.54', 'few clouds', '2025-01-30 21:01:16'),
(16, 'Janakpur Dham', 'NP', '13.07', 68, '1.20', 'clear sky', '2025-01-30 21:01:51'),
(17, 'Janakpur Dham', 'NP', '13.07', 68, '1.20', 'clear sky', '2025-01-30 21:03:41'),
(18, 'Janakpur Dham', 'NP', '13.07', 68, '1.20', 'clear sky', '2025-01-30 21:03:58'),
(19, 'Kathmandu', 'NP', '9.12', 87, '1.54', 'few clouds', '2025-01-30 21:04:22'),
(20, 'Kathmandu', 'NP', '9.12', 87, '1.54', 'few clouds', '2025-01-30 21:12:01'),
(21, 'Kathmandu', 'NP', '9.12', 87, '1.03', 'few clouds', '2025-01-30 21:12:08'),
(22, 'Kathmandu', 'NP', '9.12', 87, '1.03', 'few clouds', '2025-01-30 21:12:11'),
(23, 'Kathmandu', 'NP', '9.12', 87, '1.03', 'few clouds', '2025-01-30 21:12:11'),
(24, 'Kathmandu', 'NP', '9.12', 87, '1.03', 'few clouds', '2025-01-30 21:12:14'),
(25, 'Kathmandu', 'NP', '9.12', 87, '1.03', 'few clouds', '2025-01-30 21:12:14'),
(26, 'Kathmandu', 'NP', '9.12', 87, '1.03', 'few clouds', '2025-01-30 21:13:10'),
(27, 'Dhangadhi', 'NP', '13.56', 48, '1.27', 'clear sky', '2025-01-30 21:13:22'),
(28, 'Kathmandu', 'NP', '20.12', 40, '4.63', 'few clouds', '2025-01-31 09:54:21'),
(29, 'Janakpur Dham', 'NP', '26.11', 25, '2.50', 'clear sky', '2025-01-31 09:54:26'),
(30, 'Kathmandu', 'NP', '18.12', 48, '4.63', 'few clouds', '2025-01-31 10:37:18'),
(31, 'Janakpur Dham', 'NP', '25.00', 29, '2.19', 'clear sky', '2025-01-31 10:37:22'),
(32, 'Kathmandu', 'NP', '18.12', 48, '4.63', 'few clouds', '2025-01-31 10:37:28'),
(33, 'Kathmandu', 'NP', '18.12', 48, '4.63', 'few clouds', '2025-01-31 10:37:36'),
(34, 'Janakpur Dham', 'NP', '25.00', 29, '2.19', 'clear sky', '2025-01-31 10:37:41'),
(35, 'Kathmandu', 'NP', '17.12', 51, '5.14', 'few clouds', '2025-01-31 11:51:45'),
(36, 'Kathmandu', 'NP', '17.12', 51, '5.14', 'few clouds', '2025-01-31 12:01:11'),
(37, 'Kathmandu', 'NP', '17.12', 51, '5.14', 'few clouds', '2025-01-31 12:03:49'),
(38, 'Kathmandu', 'NP', '14.12', 62, '1.54', 'few clouds', '2025-02-02 14:53:57'),
(39, 'Janakpur Dham', 'NP', '16.97', 37, '2.96', 'clear sky', '2025-02-02 14:54:05'),
(40, 'Janakpur Dham', 'NP', '16.97', 37, '2.96', 'clear sky', '2025-02-02 14:54:18'),
(41, 'Kathmandu', 'NP', '19.08', 82, '1.19', 'scattered clouds', '2025-05-12 14:53:54'),
(42, 'Pokhara', 'NP', '20.29', 76, '2.31', 'scattered clouds', '2025-05-12 14:54:00'),
(43, 'Kathmandu', 'NP', '19.08', 82, '1.19', 'scattered clouds', '2025-05-12 14:54:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `distance_data`
--
ALTER TABLE `distance_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `qna`
--
ALTER TABLE `qna`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sensor_data`
--
ALTER TABLE `sensor_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `soil_health`
--
ALTER TABLE `soil_health`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `waste_mgt`
--
ALTER TABLE `waste_mgt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `weather_data`
--
ALTER TABLE `weather_data`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `distance_data`
--
ALTER TABLE `distance_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3367;

--
-- AUTO_INCREMENT for table `qna`
--
ALTER TABLE `qna`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT for table `sensor_data`
--
ALTER TABLE `sensor_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `soil_health`
--
ALTER TABLE `soil_health`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `waste_mgt`
--
ALTER TABLE `waste_mgt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=532;

--
-- AUTO_INCREMENT for table `weather_data`
--
ALTER TABLE `weather_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
