-- ---------------------------------------------Data------------------------------------------------------
-- INSERT INTO User(userID, userName, userPassword, firstName, email, age, gender)
-- 	VALUES(1, "khoango2002", "uP3cq2K6", "Ngô Vũ Anh Khoa", "ngokhoa1202@gmail.com", 21, "M"),
-- 			(2, "namnguyen2310", "nFtWhE8n", "Nguyễn Tiến Nam", "nam.nguyenbknetid@hcmut.edu", 20, "M"),
-- 			(3, "vunguyendhbk2000", "5SC2ea6Mb5B3", "Nguyễn Duy Vũ", "vunguyen2000@gmail.com", 21, "M"),
-- 			(4, "hainguyenSomething", "5Wm86j7TH43v", "Nguyễn Minh Hải", "hai.nguyensomething@hcmut.edu.vn", 21, "M"),
-- 			(5, "vietBestSamurai", "legendOfSamuraiViet", "Tạ Quang Việt", "viet.tasamurai@gmail.com", 22, "M"),
-- 			(6, "ThaoPhamTiNi", "ThaoNguyen2048523", "Phạm Ngọc Thảo", "thao.pham2048523@hcmut.edu.vn", 18, "F"),
-- 			(7, "iamthebosshere", "iamthebosshere1809", "Ngô Vũ Vân Anh", "vivian.ngo@sydney.edu.au", 25, "F"),
-- 			(8, "haicauancarem", "trivo2584313", "Võ Minh Trí", "minh.trivo@hcmut.edu.vn", 20, "M"),
-- 			(9, "Ruataygackiem", "kiemsihuyenthoaidaquyan", "Phạm Đỗ Tài", "PhamTaiKiemSi1994@gmail.com", 21, "M"),
-- 			(10, "tronghung7543", "jJ7y5bxNvkHY", "Nguyễn Đỗ Trọng Hùng", "tronghungfootballer@yahoo.com", 23, "M"),
-- 			(11, "nguoithichaihuoc", "cuoilenchovui2548", "Lê Văn Việt", "vietle2548@outlook.com", 30, "M"),
-- 			(12, "AliceInWonderland", "alonelystudent4839", "Alice Nguyen", "nguyenAliceStanfordUni@stanford.edu.vn", 24, "F"),
-- 			(13, "timthayhocdao", "wvNwKV9HA5rV", "Nguyễn Thành Trung", "trungnguyenyduoc2002@gmail.com", 22, "M"),
-- 			(14, "phuongthaohuflit", "eVWWvg3qz8Tw", "Đặng Quỳnh Phương Thảo", "phuongthaoyeudoi@huflit.edu.vn", 20, "F"),
-- 			(15, "baochayvogioigiang", "chauvo452638", "Võ Bảo Châu", "baochauvoKhoa45@ump.edu.com", 23, "F"),
-- 			(16, "cafedamuoi", "cafedendakhongduong", "Trịnh Minh Tân", "minhtanhaihuoc@yahoo.com", 30, "M"),
-- 			(17, "dangquanghuyTDT", "thietsumetmoi1593", "Đặng Quang Huy", "huyquangdang2011423@tdt.edu.vn", 21, "M"),
-- 			(18, "andrewdoan", "12345679", "Võ Đoàn Văn Quý", "quyquydeptrai@yahoo.com", 19, "M"),
-- 			(19, "loveMathandIT", "connguoiyeulaptrinh", "Trần Đinh An", "andinh.khoa20@uit.edu.vn", 30, "M"),
-- 			(20, "needAnAnswerForLife", "lifeismeaningful8", "John Smith", "smithPhilosophyFaculty@harvard.edu.us", 25, "M"),
-- 			(21, "hackertuonglai", "ElonMuskandBillGates", "Võ Thành Nhơn", "thanhnhonHackerHCMUS@hcmus.edu.vn", 31, "M"),
-- 			(22, "JosephSantarcangeloSpain", "josephdatasciencetist", "Joseph Santarcangelo", "josephlecturer@ibm.org.com", 45, "M"),
-- 			(23, "andrewmajorinAI", "ilovemyfamilysomuch1208", "Andrew Ng", "andrewAIStanford@stanford.edu.com", 48, "M"),
-- 			(24, "bagulindianbestIT", "iamsotirednow", "Bagul Aarti", "aarti2503bagul@stanford.edu.com", 30, "F"),
-- 			(25, "JOHNNinja4503", "iamjohn4503", "John Rafrano", "johnragrano4503@meta.org.com", 50, "M"),
--     	(26, "MoroneyDeveloper1203", "PasswordMoroney1203", "Lawrence Moroney", "moreneyintel@intel.org.com", 58, "M"),
-- 			(27, "waltherStatistics1955", "waltermajorMathsandStatistics", "Guenther Walther", "walther1955@pennn.edu.com", 60, "M"),
-- 			(28, "romeoandjuliet", "romeoibmteamlead1990", "Romeo Kienzler", "kienzlerdatascientist@gmail.com", 32, "M"),
-- 			(29, "aije1998", "aijeAfricabest", "Aiej Egwakhide", "aiej1998@hotmail.com", 24, "F"),
-- 			(30, "svetlevi1976", "svetlevi1976", "Svetlana Levitan", "svetlevi1976@albert.edu.com", 45, "F"),
--     	(31, "coleen1980", "vanLentdutch", "Coleen Van Lent", "mrscolleen@gmail.com", 41, "F"),
-- 			(32, "charlesPhD1965", "russellserverance", "Charles Russell Serverance", "charlesPhD1965@ibm.org.com", 57, "M");

SELECT * FROM User;

INSERT INTO Customer(customerID, province, city, district, customerAddress)
	VALUES(1, "Tien Giang", "Go Cong Town", "District 5", "210 Truong Dinh Street"),
				(2, "" ,"", "", ""),
				(3, "" ,"", "", ""),
				(4, "" ,"", "", ""),
				(5, "" ,"", "", ""),
				(6, "" ,"", "", ""),
				(7, "" ,"", "", ""),
				(8, "" ,"", "", ""),
				(9, "" ,"", "", ""),
				(10, "" ,"", "", ""),
				(11, "" ,"", "", ""),
				(12, "" ,"", "", ""),
				(13, "" ,"", "", ""),
				(14, "" ,"", "", ""),
				(15, "" ,"", "", "");
SELECT * FROM Customer;

-- ---------------------------------------------------------------------
INSERT INTO Manager(managerID, position, startingYear)
	VALUES(24, "", 2023),
            (25, "", 2023),
            (26, "", 2023);

SELECT * FROM Manager;

INSERT INTO Salesman(salesmanID, position, startingYear, managerID)
	VALUES(16, "", 2023, 24),
        (17, "", 2023, 24),
        (18, "", 2023, 25),
        (19, "", 2023, 25),
        (20, "", 2023, 25),
        (21, "", 2023, 26),
        (22, "", 2023, 25), 
        (23, "", 2023, 25);

SELECT * FROM Salesman;
-- ---------------------------------------------------------------------
-- INSERT INTO Product(productID, productName, unitsInStock, isActive, productDescription, supplierID, -- originalPrice, discount, currentPrice, productWeight)
-- 	VALUE();


-- --------------------------------------------------------------------------------
-- INSERT INTO Book(bookID, bookName, isbn, typeOfCover, numberOfPages, publisherID)
-- 	VALUES();


-- -------------------------------------------------------------------------------
INSERT INTO Author(authorID, fullName, age, home, authorDescription)
	VALUES(1, "Kai Bird", 72, "American", "Kai Bird is a Pulitzer Prize-winning historian and biographer. His new book is The Good Spy: The Life and Death of Robert Ames. A biography of a CIA officer, The Good Spy was released on May 20, 2014 by Crown/Random House. Kai's last book was a memoir about the Middle East entitled Crossing Mandelbaum Gate: Coming of Age Between the Arabs and Israelis, 1956-1978 (Scribner, April 27, 2010). It was a 2011 Finalist in the National Book Critics Circle Award for Autobiography. He is the co-author with Martin J. Sherwin of the Pulitzer Prize-winning biography, American Prometheus: The Triumph and Tragedy of J. Robert Oppenheimer (2005), which also won the National Book Critics Circle Award for Biography and the Duff Cooper Prize for History in London. He wrote The Chairman: John J. McCloy, the Making of the American Establishment (1992) and The Color of Truth: McGeorge Bundy & William Bundy, Brothers in Arms (1998). He is also co-editor with Lawrence Lifschultz of Hiroshima's Shadow: Writings on the Denial of History and the Smithsonian Controversy (1998). He is the recipient of fellowships from the John Simon Guggenheim Foundation, the Alicia Patterson Foundation, the John D. and Catherine T. MacArthur Foundation's writing fellowship, the Thomas J. Watson Foundation, the German Marshall Fund, the Rockefeller Foundation's Study Center, Bellagio, Italy and the Woodrow Wilson International Center for Scholars in Washington DC. He is a member of the Society of American Historians and a contributing editor of The Nation. He lives in Miami Beach."),
				(2, "Abraham Silberschatz", 60, "Israel", "Avi Silberschatz was born in Haifa, Israel. He graduated in 1976 with a Ph.D. in Computer Science from the State University of New York (SUNY) at Stony Brook. He became the Sidney J. Weinberg Professor of Computer Science at Yale University, USA in 2005. He was the chair of the Computer Science department at Yale from 2005 to 2011. Prior to coming to Yale in 2003, he was the Vice President of the Information Sciences Research Center at Bell Labs. He previously held an endowed professorship at the University of Texas at Austin, where he taught until 1993. His research interests include database systems, operating systems, storage systems, and network management. Silberschatz was elected an ACM Fellow in 1996 and received the Karl V. Karlstrom Outstanding Educator Award in 1998. He was elected an IEEE fellow in 2000 and received the IEEE IEEE Taylor L. Booth Education Award in 2002 for teaching, mentoring, and writing influential textbooks in the operating systems and database systems areas. He was elected an AAAS fellow in 2009. Silberschatz is a member of the Connecticut Academy of Science and Engineering."),
				(3, "Bert Mendelson", 50, "Britain", ""),
				(4, "Thich Nhat Hanh", 96, "Vietnam", "Thich Nhat Hanh (1926–2022) was​ a Vietnamese Buddhist Zen Master, poet, and peace activist and one of the most revered and influential spiritual teachers in the world​. Born in 1926, he became a Zen Buddhist monk at the age of sixteen. His work for peace and reconciliation during the war in Vietnam moved Dr. Martin Luther King Jr. to nominate him for the Nobel Peace Prize in 1967. In Vietnam, Thich Nhat Hanh founded Van Hanh Buddhist University and the School of Youth for Social Service, a corps of Buddhist peace​ workers. Exiled as a result of his work for peace, he continued his humanitarian efforts, rescuing boat people and helping to resettle refugees. ​In 1982 he established Plum Village France, the largest Buddhist monastery in Europe​ and the hub of the international Plum Village Community of Engaged Buddhism​.​​ Over seven decades of teaching, he published a hundred books, which have been translated into more than forty languages and have sold millions of copies worldwide."),
				(5, "Nguyen Ngoc Tu", 46, "Vietnam", "");
SELECT * FROM Author;
-- ----------------------------------------------------------------------------------------
INSERT INTO Publisher(publisherID, publisherName, publisherDescription)
	VALUES(1, "MIT", "Massachusetts Institute of Technology (MIT), privately controlled coeducational institution of higher learning famous for its scientific and technological training and research. It was chartered by the state of Massachusetts in 1861 and became a land-grant college in 1863. William Barton Rogers, MIT’s founder and first president, had worked for years to organize an institution of higher learning devoted entirely to scientific and technical training, but the outbreak of the American Civil War delayed the opening of the school until 1865, when 15 students enrolled for the first classes, held in Boston. MIT moved to Cambridge, Massachusetts, in 1916; its campus is located along the Charles River. Under the administration of president Karl T. Compton (1930–48), the institute evolved from a well-regarded technical school into an internationally known centre for scientific and technical research. During the Great Depression, its faculty established prominent research centres in a number of fields, most notably analog computing (led by Vannevar Bush) and aeronautics (led by Charles Stark Draper). During World War II, MIT administered the Radiation Laboratory, which became the nation’s leading centre for radar research and development, as well as other military laboratories. After the war, MIT continued to maintain strong ties with military and corporate patrons, who supported basic and applied research in the physical sciences, computing, aerospace, and engineering. MIT offers both graduate and undergraduate education. There are five academic schools—the School of Architecture and Planning, the School of Engineering, the School of Humanities, Arts, and Social Science, the MIT Sloan School of Management, and the School of Science—and the Whitaker College of Health Sciences and Technology. While MIT is perhaps best known for its programs in engineering and the physical sciences, other areas—notably economics, political science, urban studies, linguistics, and philosophy—are also strong. Admission is extremely competitive, and undergraduate students are often able to pursue their own original research. Total enrollment is about 10,000. MIT has numerous research centres and laboratories. Among its facilities are a nuclear reactor, a computation centre, geophysical and astrophysical observatories, a linear accelerator, a space research centre, wind tunnels, an artificial intelligence laboratory, a centre for cognitive science, and an international studies centre. MIT’s library system is extensive and includes a number of specialized libraries. There are also several museums."),
				(2, "NXB Văn học", "Ra đời trong những ngày tháng khói lửa của cuộc kháng chiến chống Pháp, trưởng thành qua các thời kỳ đấu tranh giải phóng dân tộc và công cuộc xây dựng Tổ quốc XHCN, hơn 70 năm qua, NXB Văn học luôn đồng hành cùng những biến động của đất nước, hoà chung nhịp thở của đời sống nhân dân và phong trào văn nghệ cả nước. 

														Tên Nhà xuất bản: Nhà xuất bản Văn học - Literature Publishing House

														Trụ sở: 18 Nguyễn Trường Tộ, phường Trúc Bạch, quận Ba Đình, thành phố Hà Nội 

														Điện thoại: 0243. 7161518  - 0243. 7163409

														Fax: 0243. 8294781

														Email: info.nxbvanhoc@gmail.com

														Website: www.nxbvanhoc.com; www.nxbvanhoc.vn; www.nxbvanhoc.com.vn

														Fan page facebook: Nhà xuất bản Văn học

														Facebook: Nxb Văn Học

														Ngày thành lập: Tháng 3 năm 1948."), 
				(3, "Dân trí", "Công ty TNHH Một thành viên Nhà xuất bản Dân Trí được thành lập theo giấy phép số 838/GP – BTTTT ngày 18 tháng 6 năm 2009 của Bộ Thông tin và Truyền thông, Quyết định số 213 QĐ/KHVN ngày 28 tháng 7 năm 2009 của Hội Khuyến học Việt Nam. Nhà xuất bản Dân Trí là tổ chức hoạt động trên lĩnh vực văn hóa, tư tưởng trực thuộc Hội Khuyến học Việt Nam, xuất bản các sách kiến thức phục vụ xã hội học tập, góp phần nâng cao dân trí và các loại sách khác phục vụ đời sống. Với chức năng, nhiệm vụ đó, Nhà xuất bản Dân Trí đã và đang xuất bản những mảng sách sau: Sách, tài liệu chính trị, pháp luật về giáo dục, Từ điển dùng cho các hệ đào tạo của ngành giáo dục, Sách tham khảo học sinh các bậc phổ thông, Sách tài liệu giáo dục cộng đồng nhằm thực hiện tôn chỉ, mục đích hoạt động của Hội Khuyến học Việt Nam");
SELECT * FROM Publisher;
