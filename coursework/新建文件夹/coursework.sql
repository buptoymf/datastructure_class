--
-- insert data to table User
--
insert into User (userNo, userName, password, avatar, gender, DoB, level, points, isDelete) VALUES ('U01', 'Dye', '147852', 'demo.jpg', 'M', '1997-01-01', 1, 0, FALSE);
insert into User (userNo, userName, password, avatar, gender, DoB, level, points, isDelete) VALUES ('U02', 'Earl', '852963', 'car24.jpg', 'F', '1998-02-02', 2, 5, FALSE);
insert into User (userNo, userName, password, avatar, gender, DoB, level, points, isDelete) VALUES ('U03', 'Eason', '963741', 'cat22.jpg', 'M', '1999-03-03', 3, 7, FALSE);
insert into User (userNo, userName, password, avatar, gender, DoB, level, points, isDelete) VALUES ('U04', 'Colin', '147251', 'cat11.jpg', 'F', '2000-04-04', 4, 9, FALSE);
insert into User (userNo, userName, password, avatar, gender, DoB, level, points, isDelete) VALUES ('U05', 'Mabel', '96325', '114.jpg', 'F', '2001-05-05', 5, 3, FALSE);



--
-- insert data to table Store
--
insert into Store (storeNo, storeName, dateofFound, numofFans, credits, imagesUrls, telephoneNum, introduction, isDelete) VALUES ('S01', 'sagi specialty store', '2006-06-06', 100, 100, '002.jpg', '13978946729', 'made in china', FALSE);
insert into Store (storeNo, storeName, dateofFound, numofFans, credits, imagesUrls, telephoneNum, introduction, isDelete) VALUES ('S02', 'running specialty store', '2007-07-07', 200, 99, '602.jpg', '13649734765', 'international Brand', FALSE);
insert into Store (storeNo, storeName, dateofFound, numofFans, credits, imagesUrls, telephoneNum, introduction, isDelete) VALUES ('S03', 'Pazzo', '2008-08-08', 300, 98, '452.jpg', '13646857915', 'pay attention to quality', TRUE);
insert into Store (storeNo, storeName, dateofFound, numofFans, credits, imagesUrls, telephoneNum, introduction, isDelete) VALUES ('S04', 'Yayo specialty store', '2009-09-09', 400, 97, '441.jpg', '18767549899', '10 years old store', FALSE);
insert into Store (storeNo, storeName, dateofFound, numofFans, credits, imagesUrls, telephoneNum, introduction, isDelete) VALUES ('S05', 'LK specialty store', '2010-10-10', 500, 96, '400.jpg', '13945754796', 'celebrity shop', FALSE);



--
-- insert data to table Product
--
insert into Product (productNo, storeNo, imageUrl, category, brand, title, introduction, parameterValues, monthlySales, originalPrice, currentPrice, isonShelf) VALUES ('P01', 'S01', '5707.jpg', 'clothes', 'sagi', 'skirt', 'relatively cheap', '{color:red, material: cotton}', 1000, 100, 90, TRUE);
insert into Product (productNo, storeNo, imageUrl, category, brand, title, introduction, parameterValues, monthlySales, originalPrice, currentPrice, isonShelf) VALUES ('P02', 'S02', '642.jpg', 'shoes', 'nike', 'slipper', 'very popular', '{color:black, material: plastic}', 1500, 20, 18, TRUE);
insert into Product (productNo, storeNo, imageUrl, category, brand, title, introduction, parameterValues, monthlySales, originalPrice, currentPrice, isonShelf) VALUES ('P03', 'S01', 'cat13.jpg', 'clothes', 'sagi', 'sweater', 'expensive', '{color:blue, material: wool}', 2000, 10, 5, TRUE);
insert into Product (productNo, storeNo, imageUrl, category, brand, title, introduction, parameterValues, monthlySales, originalPrice, currentPrice, isonShelf) VALUES ('P04', 'S04', 'neko.jpg', 'food', 'yayo', 'milk', 'practical', '{material: dairy}', 2500, 40, 7, TRUE);
insert into Product (productNo, storeNo, imageUrl, category, brand, title, introduction, parameterValues, monthlySales, originalPrice, currentPrice, isonShelf) VALUES ('P05', 'S05', 'cat33.jpg', 'commodity', 'LK', 'tissue', 'pratical','{weight: 1kg}', 3000, 50, 10, TRUE);




--
-- insert data to table Area
--
insert into Area (regionNo, province, city, district) VALUES ('G01', 'AH', 'HF', 'SS');
insert into Area (regionNo, province, city, district) VALUES ('G02', 'BJ', 'BJ', 'CP');
insert into Area (regionNo, province, city, district) VALUES ('G03', 'FJ', 'FZ', 'GL');
insert into Area (regionNo, province, city, district) VALUES ('G04', 'GS', 'LZ', 'CG');
insert into Area (regionNo, province, city, district) VALUES ('G05', 'GD', 'GZ', 'HP');




--
-- insert data to table Address
--
insert into Address (addressNo, userNo, receiverName, regionNo, addressDetails, phoneNum, addressTag, isDefaultAddress, isDelete) VALUES ('A01', 'U01', 'Emma', 'G01', 'w University', '18946791594', 'home', TRUE, FALSE);
insert into Address (addressNo, userNo, receiverName, regionNo, addressDetails, phoneNum, addressTag, isDefaultAddress, isDelete) VALUES ('A02', 'U02', 'Olivia', 'G02', 'wanke B02', '13675487561', 'home', TRUE, FALSE);
insert into Address (addressNo, userNo, receiverName, regionNo, addressDetails, phoneNum, addressTag, isDefaultAddress, isDelete) VALUES ('A03', 'U02', 'Kelly', 'G03', 'CT', '13967918497', 'school', FALSE, FALSE);
insert into Address (addressNo, userNo, receiverName, regionNo, addressDetails, phoneNum, addressTag, isDefaultAddress, isDelete) VALUES ('A04', 'U04', 'Edith', 'G04', 'GH', '13997845612', 'company', TRUE, FALSE);
insert into Address (addressNo, userNo, receiverName, regionNo, addressDetails, phoneNum, addressTag, isDefaultAddress, isDelete) VALUES ('A05', 'U05', 'Joyce', 'G05', 'LK', '13567849512', 'home', TRUE, FALSE);



--
-- insert data to table Payment
--
insert into Payment (paymentNo, userNo, cardNo) VALUES ('PA01', 'U01', 'CA01');
insert into Payment (paymentNo, userNo, cardNo) VALUES ('PA02', 'U02', 'CA02');
insert into Payment (paymentNo, userNo, cardNo) VALUES ('PA03', 'U02', 'CA03');
insert into Payment (paymentNo, userNo, cardNo) VALUES ('PA04', 'U04', 'CA04');
insert into Payment (paymentNo, userNo, cardNo) VALUES ('PA05', 'U05', 'CA05');


--
-- insert data to table `Order`
--
insert into `Order` (orderNo, userNo, timeofOrder, addressNo, trackingNum, status, freight, totalPrice, expressCompany, expectedDate, paymentNo) VALUES ('OR01', 'U01', '2018-09-08 10:30:11', 'A01', 'M01', 'REL', 10, 50, 'EMS', '2018-09-09', 'PA01');
insert into `Order` (orderNo, userNo, timeofOrder, addressNo, trackingNum, status, freight, totalPrice, expressCompany, expectedDate, paymentNo) VALUES ('OR02', 'U02', '2018-11-08 00:00:00', 'A02', 'M02', 'GMPS', 15, 87, 'FEDEX', '2018-11-09', 'PA02');
insert into `Order` (orderNo, userNo, timeofOrder, addressNo, trackingNum, status, freight, totalPrice, expressCompany, expectedDate, paymentNo) VALUES ('OR03', 'U02', '2019-05-17 08:00:00', 'A03', 'M03', 'PCNF', 10, 38, 'EMS', '2019-05-18', 'PA03');
insert into `Order` (orderNo, userNo, timeofOrder, addressNo, trackingNum, status, freight, totalPrice, expressCompany, expectedDate, paymentNo) VALUES ('OR04', 'U04', '2019-05-18 12:00:00', 'A04', 'M04', 'CNF', 11, 261, 'CAE', '2019-05-19', 'PA04');



--
-- insert data to table ProductinOrder
--
insert into ProductinOrder (productNo, orderNo, price, numofProducts) VALUES ('P04', 'OR01', 40, 1);
insert into ProductinOrder (productNo, orderNo, price, numofProducts) VALUES ('P01', 'OR02', 9, 2);
insert into ProductinOrder (productNo, orderNo, price, numofProducts) VALUES ('P02', 'OR02', 18, 3);
insert into ProductinOrder (productNo, orderNo, price, numofProducts) VALUES ('P04', 'OR03', 7, 4);
insert into ProductinOrder (productNo, orderNo, price, numofProducts) VALUES ('P05', 'OR04', 50, 5);



--
-- insert data to table Comments
--
insert into Comments (commentNo, userNo, productNo, level, comment, commentTime) values ('C01', 'U01', 'P04', 5, 'taste good', '2018-09-11 10:30:11');
insert into Comments (commentNo, userNo, productNo, level, comment, commentTime) VALUES ('C02', 'U02', 'P02', 4, 'good quality', '2018-11-11 00:00:00');
insert into Comments (commentNo, userNo, productNo, level, comment, commentTime) VALUES ('C03', 'U02', 'P01', 3, 'the color is different', '2018-11-20 08:00:00');
insert into Comments (commentNo, userNo, productNo, level, comment, commentTime) VALUES ('C04', 'U04', 'P05', 4, 'it is ok', '2019-05-21 12:00:00');


--
-- insert data to table BlackList
--
insert into BlackList (userNo, productNo) VALUES ('U01', 'P01');
insert into BlackList (userNo, productNo) VALUES ('U01', 'P02');
insert into BlackList (userNo, productNo) VALUES ('U01', 'P03');
insert into BlackList (userNo, productNo) VALUES ('U04', 'P04');
insert into BlackList (userNo, productNo) VALUES ('U05', 'P05');


--
-- insert data to table ProductinCart
--
insert into ProductinCart (userNo, productNo, numofProduct, isDelete) VALUES ('U01', 'P04', 1, TRUE);
insert into ProductinCart (userNo, productNo, numofProduct, isDelete) VALUES ('U02', 'P01', 2, FALSE);
insert into ProductinCart (userNo, productNo, numofProduct, isDelete) VALUES ('U02', 'P03', 3, FALSE);
insert into ProductinCart (userNo, productNo, numofProduct, isDelete) VALUES ('U04', 'P05', 4, FALSE);
insert into ProductinCart (userNo, productNo, numofProduct, isDelete) VALUES ('U05', 'P04', 5, FALSE);


--
-- insert data to table History
--
insert into History (userNo, productNo, time) VALUES ('U01', 'P04', '2018-08-09');
insert into History (userNo, productNo, time) VALUES ('U02', 'P02', '2018-11-07');
insert into History (userNo, productNo, time) VALUES ('U02', 'P03', '2019-05-15');
insert into History (userNo, productNo, time) VALUES ('U02', 'P04', '2019-05-17');
insert into History (userNo, productNo, time) VALUES ('U05', 'P05', '2019-05-13');




