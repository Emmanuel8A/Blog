-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-04-2022 a las 01:36:36
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `blog`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `noticia`
--

CREATE TABLE `noticia` (
  `title` varchar(200) DEFAULT NULL,
  `description` varchar(300) DEFAULT NULL,
  `content` varchar(200) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `noticia`
--

INSERT INTO `noticia` (`title`, `description`, `content`, `date`, `image`) VALUES
('7 Bonkers Corporate Earth Day Campaigns - Gizmodo', 'The Koch Brothers love the Earth, everyone! Thank god.', 'While the french fry giant has done its share of pandering to eco-consciouscustomers for Earth Day throughout the years, this vintage play set of plastic shovels, bird feeders, terrariums, and binocu…', '2022-04-22T14:10:00Z', 'https://i.kinja-img.com/gawker-media/image/upload/c_fill,f_auto,fl_progressive,g_center,h_675,pg_1,q_80,w_1200/86b4e003e9369b8f9cd808a83f317dc3.png'),
('Stock market news live updates: Stocks extend losses as investors weigh hawkish Powell remarks, more corporate earnings - Yahoo Finance', 'U.S. stocks fell sharply on Friday as investors weighed a bevy of corporate earnings and braced for more aggressive interest rate hikes from the Federal...', 'U.S. stocks fell sharply on Friday as investors weighed a bevy of corporate earnings and braced for more aggressive interest rate hikes from the Federal Reserve in coming months.\r\nThe S&amp;P 500 tum…', '2022-04-22T18:00:12Z', 'https://s.yimg.com/ny/api/res/1.2/t8CLi.fz7HfjR8V5LTKgcw--/YXBwaWQ9aGlnaGxhbmRlcjt3PTEyMDA7aD04MDA-/https://s.yimg.com/os/creatr-uploaded-images/2022-04/258ff170-c18e-11ec-bfe8-cbb501a6608c'),
('Carlos Ghosn Wanted by France for International Arrest - The New York Times', 'Prosecutors say the disgraced auto tycoon channeled millions of euros in Renault funds through an Omani car distributor for personal use, including the purchase of a 120-foot yacht.', 'There was not a penny from Renault or Nissan that was unjustly given to me, directly or indirectly, he added.\r\nMr. Ghosn said he was eager to clear his name and hoped to eventually go to France to de…', '2022-04-22T17:57:01Z', 'https://static01.nyt.com/images/2022/04/22/multimedia/22ghosn-france/22ghosn-france-facebookJumbo.jpg'),
('Stocks making the biggest moves midday: HCA Healthcare, Kimberly-Clark, Gap and more - CNBC', 'These are the stocks posting the largest moves in midday trading.', 'Check out the companies making headlines in midday trading Friday.\r\nAmerican Express Shares of the payment firm dipped 1.1% despite American Express topping earnings expectations for the first quarte…', '2022-04-22T17:02:39Z', 'https://image.cnbcfm.com/api/v1/image/106092591-1566506331712img_8175rr.jpg?v=1583519638&w=1920&h=1080'),
('Chick-fil-A Brings Back a Menu Favorite After 6 Years - TheStreet', 'The Spicy Chicken Biscuit has been on hiatus since 2016.', 'In the world of fast food, there is nothing like the comeback of a discontinued-but-not-forgotten item to get people in a frenzy. \r\nIt happened with Taco Bell\'s Mexican Pizza, and the lines caused by…', '2022-04-22T16:23:39Z', 'https://www.thestreet.com/.image/t_share/MTg4OTY2MjE2NDgyNjk0NjEy/spicy-chicken-biscuit.jpg'),
('Elon Musk may combine Tesla, SpaceX and Twitter into new \'super company\' - New York Post ', 'Elon Musk may be laying the groundwork to combine Tesla, SpaceX and Twitter into a new super company.', 'Elon Musk may be laying the groundwork to combine Tesla, SpaceX and Twitter into a new super company.\r\nAs the worlds richest man continues his crusade to take over Twitter, Musk registered three new …', '2022-04-22T16:10:00Z', 'https://nypost.com/wp-content/uploads/sites/2/2022/04/elon-musk-tesla-spacex-twitter-comp.jpg?quality=75&strip=all&w=1024'),
('Why Elon Musk Is a Problem for Trump’s Truth Social - The New York Times', 'The Tesla chief’s plan for a Twitter takeover adds to the problems facing the former president’s nascent social media network.', 'Trump Media would face a murkier future. After a flurry of downloads when Truth Social first launched, interest has dropped sharply. Sensor Tower, an app insights company, said the app was downloaded…', '2022-04-22T15:47:31Z', 'https://static01.nyt.com/images/2022/04/21/business/00trumpmedia-1/00trumpmedia-1-facebookJumbo.jpg'),
('Best Buy recalls 772,000 air fryers after burning, melting incidents - The Washington Post', 'There have been more than 100 incidents involving the retailer’s Insignia brand, according to the Consumer Product Safety Commission.', 'Placeholder while article actions load\r\nBest Buy is recalling 772,000 air fryers and air fryer ovens in the United States and Canada after more than 100 reports of them burning, melting or catching f…', '2022-04-22T15:46:00Z', 'https://www.washingtonpost.com/wp-apps/imrs.php?src=https://arc-anglerfish-washpost-prod-washpost.s3.amazonaws.com/public/6KXVC7E264I6ZGMHTXHO4YVD6Y.jpg&w=1440'),
('Late Disclosures Concealed The Extent Of Amazon’s Anti-Union Campaign - HuffPost', 'Some of the consultants who lobbied Amazon workers against unionization didn’t report their work to the Labor Department until it was too late to matter.', 'Amazon spent $4.3 million on anti-union consultants last year, but workers didn\'t always know who the consultants were.\r\nWhile Amazon workers in Alabama and New York were trying to unionize their war…', '2022-04-22T15:41:19Z', 'https://img.huffingtonpost.com/asset/624495391e0000c2561b176e.jpeg?ops=1778_1000'),
('Why Intuitive Surgical Stock Crumbled on Friday - The Motley Fool', 'The company\'s better-than-expected results couldn\'t counter management\'s cautious forecast.', 'What happened\r\nShares of Intuitive Surgical( ISRG -13.29% ) slumped on Friday, plunging as much as 13.4%. As of 11:16 a.m. ET, the stock was still down 12.42%.\r\nThe catalyst that sent the medical dev…', '2022-04-22T15:35:05Z', 'https://g.foolcdn.com/editorial/images/675765/intuitive-da-vinci-or-staff-with-patient-cart-hi-res.jpg'),
('Tesla’s gross margin and profits are surging along with prices, and it had to explain itself - Electrek.co', 'Tesla’s gross margin and profits are soaring to record highs as it is raising prices, which the automaker has blamed on rising costs. The company felt the need to explain itself. Over the last few years, one of the biggest storylines around the auto industry,…', 'Tesla’s gross margin and profits are soaring to record highs as it is raising prices, which the automaker has blamed on rising costs. The company felt the need to explain itself.\r\nOver the last few y…', '2022-04-22T15:14:00Z', 'https://i0.wp.com/electrek.co/wp-content/uploads/sites/3/2021/12/Tesla-all-casrs-hero.jpg?resize=1200%2C628&quality=82&strip=all&ssl=1'),
('Indonesia to ban palm oil exports to curb domestic prices - Reuters', 'Indonesia will effectively ban palm oil exports from April 28, until further notice, after President Joko Widodo on Friday announced a halt of shipments of cooking oil and its raw material to control soaring domestic prices.', 'JAKARTA, April 22 (Reuters) - Indonesia will effectively ban palm oil exports from April 28, until further notice, after President Joko Widodo on Friday announced a halt of shipments of cooking oil a…', '2022-04-22T15:11:00Z', 'https://www.reuters.com/resizer/9a8x6nov-e36F3RZjfvDCHBsugY=/1200x628/smart/filters:quality(80)/cloudfront-us-east-2.images.arcpublishing.com/reuters/Y25ODOBVFBLIZBMFDLEYBTKBME.jpg'),
('Is Netflix cracking down on password sharing? What subscribers need to know - MarketWatch', 'Netflix executives have proposed charging for password sharing. They estimate 100 million people use shared login information to watch the streaming service.', 'Coming soon to Netflix: password-sharing fees.Netflix CEO Reed Hastings famously said password sharing really hasnt been a problem in 2016, but now he appears to be changing his mind. According to a …', '2022-04-22T15:03:00Z', 'https://images.mktw.net/im-529279/horizontal'),
('Jessica Simpson admits she has \'no working credit card\' and got DECLINED at fast food joint - Daily Mail', 'Last October, Simpson reportedly offered up $65 million of her own money to regain full ownership of her billion-dollar fashion brand', 'Jessica Simpson shocked fans this week when she admitted that her credit card got declined while trying to order a meal at fast food restaurant Taco Bell, after investing millions of her own cash to …', '2022-04-22T15:00:39Z', 'https://i.dailymail.co.uk/1s/2022/04/22/15/56930053-0-image-a-17_1650639251043.jpg'),
('The Renault/Nissan Breakup Involves Another Arrest Warrant - Jalopnik', 'Carlos Ghosn gets a French arrest warrant as Renault plans to sell Nissan stake', 'The French side of the Renault/Nissan alliance is making moves, and it doesnt look good for the relationship. All that and more in The Morning Shift for April 22, 2022.\r\n1st Gear: Renault/Nissan Brea…', '2022-04-22T15:00:00Z', 'https://i.kinja-img.com/gawker-media/image/upload/c_fill,f_auto,fl_progressive,g_center,h_675,pg_1,q_80,w_1200/ead0e2f31f8b8ee70363ceab45c9a24f.jpg'),
('Mazda Is Reviving The Rotary Engine For Its Mazda MX-30 Plug-In Hybrid - Jalopnik', 'Mazda\'s iconic rotary engine will now generate electricity', 'Mazda has done it. The company has found a way to preserve its iconic rotary engine in an era of increasing electrification, Automotive News reports. Now, its going to be popping the rotary engine in…', '2022-04-22T14:30:00Z', 'https://i.kinja-img.com/gawker-media/image/upload/c_fill,f_auto,fl_progressive,g_center,h_675,pg_1,q_80,w_1200/a4bfef39fe2c361a2a86760db48e9a2a.jpg'),
('Tesla Giga Shanghai “coming back with a vengeance” with fresh waves of Model Y - Teslarati', 'During Tesla’s first-quarter earnings call, Elon Musk mentioned that Gigafactory Shanghai is “coming back with a vengeance” following its three-week shutdown that started late March. Recent photos of the Giga Shanghai complex and local reports now indicate th…', 'During Tesla’s first-quarter earnings call, Elon Musk mentioned that Gigafactory Shanghai is “coming back with a vengeance” following its three-week shutdown that started late March. Recent photos of…', '2022-04-22T14:27:49Z', 'https://www.teslarati.com/wp-content/uploads/2022/04/giga-shanghai-42022.jpeg'),
('Facebook\'s Sheryl Sandberg Leaned On Daily Mail To Drop Story On Her Boyfriend: Report - HuffPost', 'Video game CEO Robert Kotick had been accused of intimidating an ex-girlfriend who now says the claims were exaggerated.', 'Longtime Facebook executive Sheryl Sandberg was involved in a pressure campaign against the Daily Mail on two occasions to convince the publications leadership to drop an unflattering story about her…', '2022-04-22T14:23:29Z', 'https://img.huffingtonpost.com/asset/6262adf21e0000eb991b3279.jpeg?cache=VmGG6gN92m&ops=1778_1000'),
('Why Now Is The Time To Watch These 8 Lithium Stocks - Benzinga - Benzinga', 'During the Tesla Inc (NASDAQ: TSLA) earnings call on Wednesday, CEO Elon Musk asked for more public investments in the lithium mining industry. He ...', 'During the Tesla Inc (NASDAQ: TSLA) earnings call on Wednesday, CEO Elon Musk asked for more public investments in the lithium mining industry. He noted that the fundamental limiting factor for manuf…', '2022-04-22T14:19:00Z', 'https://cdn.benzinga.com/files/imagecache/og_image_social_share_1200x630/images/story/2022/04/22/binoculars.telescope-5257599_1920image_by_luisella_planeta_leoni_from_pixabay.jpg'),
('CNN\'s \'$1BILLION backfire\': How CNN+ \'vanity project\' collapsed in just three weeks - Daily Mail', 'The CNN crisis culminated in what has been seen as the \'biggest flop in US broadcasting history\' as it pulled its new streaming service. Pictured: Its launch party last month.', 'CNN was one of the most trusted news firms in the country, covering the whirlwind agenda with facts and analysis that few rivalled.\r\nBut over the last few years the media company has been accused of …', '2022-04-22T14:15:12Z', 'https://i.dailymail.co.uk/1s/2022/04/22/15/56927655-0-image-a-15_1650636835022.jpg'),
('7 Bonkers Corporate Earth Day Campaigns - Gizmodo', 'The Koch Brothers love the Earth, everyone! Thank god.', 'While the french fry giant has done its share of pandering to eco-consciouscustomers for Earth Day throughout the years, this vintage play set of plastic shovels, bird feeders, terrariums, and binocu…', '2022-04-22T14:10:00Z', 'https://i.kinja-img.com/gawker-media/image/upload/c_fill,f_auto,fl_progressive,g_center,h_675,pg_1,q_80,w_1200/86b4e003e9369b8f9cd808a83f317dc3.png'),
('Stocks Tumble as Jitters over Interest Rates Persist - The New York Times', 'Friday was the S&P 500’s worst day since early March. Recent comments from Fed officials have fueled expectations that interest rates will climb far faster than anyone had thought.', 'The prospect of a fast increase in interest rates has hit technology stocks particularly hard. Facebook, Microsoft, Amazon and Alphabet, Googles parent company, are down more than 10 percent for the …', '2022-04-22T20:06:59Z', 'https://static01.nyt.com/images/2022/04/22/business/22stocks/22stocks-facebookJumbo.png'),
('Dow Tumbles Nearly 1000 Points as Stocks Extend Selloff - The Wall Street Journal', 'S&P, Nasdaq turn in sharp weekly losses; yield on 10-year Treasury note hovers near multiyear high', 'Stocks dropped sharply Friday with the Dow industrials suffering their worst one-day loss since October 2020 as investors prepared for tighter monetary policy from the Federal Reserve.\r\nThe declines …', '2022-04-22T20:04:00Z', 'https://images.wsj.net/im-529557/social'),
('Stocks Tumble as Jitters over Interest Rates Persist - The New York Times', 'Friday was the S&P 500’s worst day since early March. Recent comments from Fed officials have fueled expectations that interest rates will climb far faster than anyone had thought.', 'The prospect of a fast increase in interest rates has hit technology stocks particularly hard. Facebook, Microsoft, Amazon and Alphabet, Googles parent company, are down more than 10 percent for the …', '2022-04-22T20:06:59Z', 'https://static01.nyt.com/images/2022/04/22/business/22stocks/22stocks-facebookJumbo.png'),
('Dow Tumbles Nearly 1000 Points as Stocks Extend Selloff - The Wall Street Journal', 'S&P, Nasdaq turn in sharp weekly losses; yield on 10-year Treasury note hovers near multiyear high', 'Stocks dropped sharply Friday with the Dow industrials suffering their worst one-day loss since October 2020 as investors prepared for tighter monetary policy from the Federal Reserve.\r\nThe declines …', '2022-04-22T20:04:00Z', 'https://images.wsj.net/im-529557/social'),
('Netflix and Facebook have given up most of the last few years\' gains since tech\'s November peak - CNBC', 'Netflix is down nearly 68% so far this year, and Facebook has lost over 45% of its value in 2022.', 'Two members of the FAANG group have been defanged.\r\nIn the five months since the Nasdaq\'s peak late last year, Netflix and Facebook (now Meta Platforms) have gotten crushed, giving up most of the gai…', '2022-04-22T21:54:48Z', 'https://image.cnbcfm.com/api/v1/image/107004480-16427686872021-10-18t214833z_248032854_rc2lcq90vgxs_rtrmadp_0_milken-conference.jpeg?v=1650668015&w=1920&h=1080'),
('Why did the stock market fall? Dow finishes nearly 1,000 points lower in worst day since October 2020 - MarketWatch', 'Stocks hammered as investors grapple with Fed rate path; health-care stocks slump after HCA earnings', 'U.S. stocks fell sharply on Friday to suffer their biggest one-day drop since 2020, as investors continued to weigh hawkish comments on interest rates a day earlier by Federal Reserve Chairman Jerome…', '2022-04-22T20:42:00Z', 'https://images.mktw.net/im-530094/social'),
('Our first impressions after driving FedEx’s new electric delivery van - Ars Technica', 'BrightDrop and FedEx drove an electric van from NYC to DC—then let Ars have a try.', 'Enlarge/ BrightDrop made efficient use of GM\'s new electric vehicle platform, bringing the Zevo 600 from idea to reality in less than two years.\r\n46 with 30 posters participating, including story aut…', '2022-04-22T20:40:06Z', 'https://cdn.arstechnica.net/wp-content/uploads/2022/04/BrightDrop-Zevo-600-1-760x380.jpg'),
('Verizon Falls After Guiding 2022 EPS To Lower End Of Guidance - Investor\'s Business Daily', NULL, NULL, '2022-04-22T20:01:00Z', 'https://3.bp.blogspot.com/-3_xUllAtoSU/VGkZhvhGL2I/AAAAAAABNII/rXZAXLozSR8/s1600/noticias.png'),
('Bed Bath & Beyond\'s Buybuy Baby Draws Buyer Interest - The Wall Street Journal', 'Suitors for the baby-gear chain include Cerberus and a SPAC chaired by Casper Sleep’s former CEO.', 'Bed Bath &amp; Beyond is fielding interest from potential acquirers of its Buybuy Baby business after the retailer came under pressure from an activist investor to unload the unit.\r\nSuitors for the b…', '2022-04-22T19:43:00Z', 'https://images.wsj.net/im-527270/social'),
('Elon Musk Takes Major Step Toward Buying Twitter - TheStreet', 'The social media company now has an ever-more-serious scenario to contemplate.', 'The ongoing game of footsie between billionaire tech mogul Elon Musk and social media platform Twitter reached a new stage April 22, as Musk began major steps towards buying the company.\r\nThe busines…', '2022-04-22T19:24:36Z', 'https://www.thestreet.com/.image/t_share/MTg4NzYwNTA0NDYwNjUwMDY0/elon-musk.jpg'),
('What WILL the stars of CNN+ do now? Chris Wallace is a \'logical fit\' for fired Chris Cuomo\'s slot - Daily Mail', 'CEO Chris Licht, who does not officially take over until May 2, tried to assure them they will get opportunities to apply for roles at Warner Bros Discovery.', 'The rapid collapse of CNN+ was the worst possible start to the $43billion merger between its parent company WarnerMedia and Discovery.\r\nBut it could also spell doom for the estimated 400 journalists …', '2022-04-22T19:20:37Z', 'https://i.dailymail.co.uk/1s/2022/04/22/21/56940121-0-image-a-5_1650658160488.jpg'),
('Best Buy recalls 772,000 Insignia air fryers over fires, melting - New York Post ', 'The recall covers approximately 635,000 Insignia Digital Air Fryers, Insignia Analog Air Fryers and Insignia Digital Air Fryer Ovens.', 'Best Buy is recalling 772,000 Insignia air fryers and air fryer ovens in the US and Canada following more than 100 reports of the products catching fire, burning or melting. \r\nThe recall covers appro…', '2022-04-22T19:19:00Z', 'https://nypost.com/wp-content/uploads/sites/2/2022/04/analog-air-fryer-comp.jpg?quality=75&strip=all&w=1024'),
('A Tesla vehicle using \"Smart Summon\" appears to crash into a $3.5 million private jet - The Verge', 'A Tesla vehicle was filmed crashing into a $3.5 million private jet in Spokane, Washington. The vehicle was allegedly being “summoned” by the owner using Tesla’s smart parking feature.', 'More money, more problems\r\nA video was posted on Reddit Thursday that appears to show a Tesla vehicle slowly crashing into a $3.5 million private jet after being summoned by its owner using the autom…', '2022-04-22T19:03:55Z', 'https://cdn.vox-cdn.com/thumbor/67hpZvafuOGXopEtDhyKHnwRm3I=/0x21:1374x740/fit-in/1200x630/cdn.vox-cdn.com/uploads/chorus_asset/file/23409781/Screen_Shot_2022_04_22_at_2.28.37_PM.png'),
('Green beans sold at Whole Foods, Aldi, Lidl recalled over listeria concerns - Fox Business', 'Alpine Fresh\'s voluntary recall includes one pound packages of \"Hippie Organics\" French Beans, according to the recall notice posted by the U.S. Food and Drug Administration.', 'Green beans sold at Whole Foods, Aldi and Lidl stores in various states are being recalled because officials believe they may have been contained with potentially harmful bacteria. \r\nAlpine Fresh\'s v…', '2022-04-22T18:27:45Z', 'https://a57.foxnews.com/static.foxbusiness.com/foxbusiness.com/content/uploads/2022/04/0/0/recall-split.jpg?ve=1&tl=1'),
('Carlos Ghosn Wanted by France for International Arrest - The New York Times', 'Prosecutors say the disgraced auto tycoon channeled millions of euros in Renault funds through an Omani car distributor for personal use, including the purchase of a 120-foot yacht.', 'There was not a penny from Renault or Nissan that was unjustly given to me, directly or indirectly, he added.\r\nMr. Ghosn said he was eager to clear his name and hoped to eventually go to France to de…', '2022-04-22T18:14:40Z', 'https://static01.nyt.com/images/2022/04/22/multimedia/22ghosn-france/22ghosn-france-facebookJumbo.jpg'),
('Shares of Alphabet Break $2500 on the Charts - RealMoney', 'But here\'s what to avoid now....GOOGL', NULL, '2022-04-22T17:48:12Z', 'http://s.thestreet.com/files/tsc/v2008/photos/contrib/uploads/fdbc1b85-0638-11ea-848d-179b6100bb17.png'),
('I think markets will continue to go lower, says Steve Weiss - CNBC Television', NULL, 'Your browser isnt supported anymore. Update it to get the best YouTube experience and our latest features. Learn more\r\nRemind me later', '2022-04-22T17:08:12Z', 'https://3.bp.blogspot.com/-3_xUllAtoSU/VGkZhvhGL2I/AAAAAAABNII/rXZAXLozSR8/s1600/noticias.png'),
('Stocks making the biggest moves midday: HCA Healthcare, Kimberly-Clark, Gap and more - CNBC', 'These are the stocks posting the largest moves in midday trading.', 'Check out the companies making headlines in midday trading Friday.\r\nAmerican Express Shares of the payment firm dipped 1.1% despite American Express topping earnings expectations for the first quarte…', '2022-04-22T17:02:39Z', 'https://image.cnbcfm.com/api/v1/image/106092591-1566506331712img_8175rr.jpg?v=1583519638&w=1920&h=1080'),
('Yellen: ‘We Will Have to Put Up with Inflation for a While Longer’ - Breitbart', 'In an interview with CNBC\'s \"TechCheck,\" Treasury Secretary Janet Yellen predicted that the United States would have to \"put up with inflation for a while | Clips', 'In an interview with CNBC’s “TechCheck,” Treasury Secretary Janet Yellen predicted that the United States would have to “put up with inflation for a while longer.”\r\nYellen said the U.S. economy “has …', '2022-04-22T16:59:38Z', 'https://media.breitbart.com/media/2017/12/wi/ap/13/3e3f2h9-e1513173110304.jpg'),
('Elon Musk-funded XPRIZE carbon removal competition reveals its 15 “milestone round” winners - Teslarati', 'Fifteen early-phase “milestone round” winners from the Elon Musk-funded $100 million XPRIZE Carbon Removal competition were announced on Friday. Each of the winning teams will be receiving $1 million, which should provide the teams a notable boost to scale th…', 'Fifteen early-phase “milestone round” winners from the Elon Musk-funded $100 million XPRIZE Carbon Removal competition were announced on Friday. Each of the winning teams will be receiving $1 million…', '2022-04-22T16:27:47Z', 'https://www.teslarati.com/wp-content/uploads/2021/02/elon-musk-carbon-capture-prize-xprize.jpg'),
('Chick-fil-A Brings Back a Menu Favorite After 6 Years - TheStreet', 'The Spicy Chicken Biscuit has been on hiatus since 2016.', 'In the world of fast food, there is nothing like the comeback of a discontinued-but-not-forgotten item to get people in a frenzy. \r\nIt happened with Taco Bell\'s Mexican Pizza, and the lines caused by…', '2022-04-22T16:23:39Z', 'https://www.thestreet.com/.image/t_share/MTg4OTY2MjE2NDgyNjk0NjEy/spicy-chicken-biscuit.jpg'),
('New 13-story hotel coming to Denver\'s Civic Center Park - 9News.com KUSA', 'Populus hopes to serve as a catalyst for the revitalization of Denver’s Civic Center Park.', 'DENVER A new downtown Denver hotel is aiming to be the first carbon-positive hotel in the United States.\r\nReal estate developer Urban Villages announced Friday the start of construction on Populus, a…', '2022-04-22T16:17:00Z', 'https://media.9news.com/assets/KUSA/images/b6f0b152-6c5e-42d0-80c6-da180cbb6d03/b6f0b152-6c5e-42d0-80c6-da180cbb6d03_1140x641.jpg'),
('AMC Ent. To Install Laser Projectors At 3,500 U.S. Auditoriums In Major Upgrade; Deal With Cinionic Rolls Out Through 2026 - Deadline', 'AMC Entertainment is planning its first major upgrade since the transition to digital, announcing a deal with Cinionic to roll out laser projectors to 3,500 of its U.S. auditoriums through 2026. The ’Laser at AMC’ initiative “represents a significant accelera…', 'AMC Entertainment is planning its first major upgrade since the transition to digital, announcing a deal with Cinionic to roll out laser projectors to 3,500 of its U.S. auditoriums through 2026.\r\nThe…', '2022-04-22T16:00:00Z', 'https://deadline.com/wp-content/uploads/2020/08/amc-theatres.jpg?w=1024'),
('Late Disclosures Concealed The Extent Of Amazon’s Anti-Union Campaign - HuffPost', 'Some of the consultants who lobbied Amazon workers against unionization didn’t report their work to the Labor Department until it was too late to matter.', 'Amazon spent $4.3 million on anti-union consultants last year, but workers didn\'t always know who the consultants were.\r\nWhile Amazon workers in Alabama and New York were trying to unionize their war…', '2022-04-22T15:41:19Z', 'https://img.huffingtonpost.com/asset/624495391e0000c2561b176e.jpeg?ops=1778_1000');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
