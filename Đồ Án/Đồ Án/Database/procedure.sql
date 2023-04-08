-- Active: 1678415452072@@127.0.0.1@3306@bookstore
-- --------------------Login-----------------------------------------------------------
DROP PROCEDURE IF EXISTS customerLogin;

DELIMITER $$
CREATE PROCEDURE customerLogin(IN _userName varchar(50), IN _userPassword varchar(50))
BEGIN
	DECLARE errorMessage VARCHAR(255);
	IF _userName IS NULL THEN
		BEGIN
			SET errorMessage = "ERROR: Username field must not be empty";
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = errorMessage;
		END;
	ELSEIF _userPassWord IS NULL THEN
		BEGIN
			SET errorMessage = 'ERROR: Password field must not be empty';
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = errorMessage;
		END;
	ELSE
	BEGIN
		DROP VIEW IF EXISTS ActiveUser;
		CREATE VIEW ActiveUser AS
			SELECT * FROM User, Customer
				WHERE User.userID = Customer.customerID
					AND User.isActive = TRUE;
		IF NOT EXISTS (SELECT * FROM ActiveUser WHERE ActiveUser.userName = _userName) THEN
		BEGIN
			SET errorMessage = 'ERROR: Username is unidentified';
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = errorMessage;
		END;
		ELSEIF NOT EXISTS (SELECT * FROM ActiveUser WHERE ActiveUser.userPassword = _userPassword) THEN
		BEGIN
			SET errorMessage = 'ERROR: Password is incorrect';
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = errorMessage;
		END;
		END IF;
	END;
	END IF;
	SELECT * 
    FROM User, Customer 
	  WHERE User.userID = Customer.customerID
					AND User.isActive = TRUE
          AND User.userName = _userName 
					AND User.userPassword = _userPassword;
  -- TODO
  -- IF SELECT = NULL CAN'T FIND userName or userPassword
END;
$$
DELIMITER ;

CALL customerLogin("namnguyen2310", "nFtWhE8n");
------------------------------------------------------------------------

DROP PROCEDURE IF EXISTS salesmanLogin;

DELIMITER $$
CREATE PROCEDURE salesmanLogin(IN _userName varchar(50), IN _userPassword varchar(50))
BEGIN
DECLARE errorMessage VARCHAR(255);
	IF _userName IS NULL THEN
		BEGIN
			SET errorMessage = "ERROR: Username field must not be empty";
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = errorMessage;
		END;
	ELSEIF _userPassWord IS NULL THEN
		BEGIN
			SET errorMessage = 'ERROR: Password field must not be empty';
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = errorMessage;
		END;
	ELSE
	BEGIN
		DROP VIEW IF EXISTS ActiveUser;
		CREATE VIEW ActiveUser AS
			SELECT * FROM User, Salesman
				WHERE User.userID = Salesman.salesmanID
					AND User.isActive = TRUE;
		IF NOT EXISTS (SELECT * FROM ActiveUser WHERE ActiveUser.userName = _userName) THEN
		BEGIN
			SET errorMessage = 'ERROR: Username is unidentified';
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = errorMessage;
		END;
		ELSEIF NOT EXISTS (SELECT * FROM ActiveUser WHERE ActiveUser.userPassword = _userPassword) THEN
		BEGIN
			SET errorMessage = 'ERROR: Password is incorrect';
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = errorMessage;
		END;
		END IF;
	END;
	END IF;
	SELECT * 
    FROM User, Salesman 
	  WHERE User.userID = Salesman.salesmanID
					AND User.isActive = TRUE
          AND User.userName = _userName 
					AND User.userPassword = _userPassword;
END;
$$
DELIMITER ;

CALL salesmanLogin("cafedamuoi", "cafedendakhongduong");
----------------------------------------------------------------------
DROP PROCEDURE IF EXISTS managerLogin;

DELIMITER $$
CREATE PROCEDURE managerLogin(IN _userName varchar(50), IN _userPassword varchar(50))
BEGIN
	DECLARE errorMessage VARCHAR(255);
	IF _userName IS NULL THEN
		BEGIN
			SET errorMessage = "ERROR: Username field must not be empty";
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = errorMessage;
		END;
	ELSEIF _userPassWord IS NULL THEN
		BEGIN
			SET errorMessage = 'ERROR: Password field must not be empty';
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = errorMessage;
		END;
	ELSE
	BEGIN
		DROP VIEW IF EXISTS ActiveUser;
		CREATE VIEW ActiveUser AS
			SELECT * FROM User, Manager
				WHERE User.userID = Manager.managerID
					AND User.isActive = TRUE;
		IF NOT EXISTS (SELECT * FROM ActiveUser WHERE ActiveUser.userName = _userName) THEN
		BEGIN
			SET errorMessage = 'ERROR: Username is unidentified';
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = errorMessage;
		END;
		ELSEIF NOT EXISTS (SELECT * FROM ActiveUser WHERE ActiveUser.userPassword = _userPassword) THEN
		BEGIN
			SET errorMessage = 'ERROR: Password is incorrect';
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = errorMessage;
		END;
		END IF;
	END;
	END IF;
	SELECT * 
    FROM User, Manager 
	  WHERE User.userID = Manager.managerID
          AND User.userName = _userName 
					AND User.userPassword = _userPassword;
END;
$$
DELIMITER ;

CALL managerLogin("bagulindianbestIT", "iamsotirednow");

-- --------------------------------Insert procedure-------------------------------------------
--------------------------------------------------------------------------------------------

DROP PROCEDURE IF EXISTS insertCustomer;

DELIMITER $$
CREATE PROCEDURE insertCustomer(IN _userName VARCHAR(50), IN _userPassword VARCHAR(50))
BEGIN
	DECLARE errorMessage VARCHAR(255);
	IF _userName IS NULL THEN 
	BEGIN
		SET errorMessage = "ERROR: Username must not be empty";
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = errorMessage;
	END;
	ELSEIF _userPassword IS NULL THEN
	BEGIN
		SET errorMessage = "ERROR: Password must not be empty";
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = errorMessage;
	END;
	ELSEIF EXISTS (SELECT * FROM User WHERE User.userName = _userName AND User.isActive = TRUE) THEN
	BEGIN
		SET errorMessage = "ERROR: User name has already existed";
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = errorMessage;
	END;
	END IF;
	INSERT INTO User(userName, userPassword)
		VALUES(_userName, _userPassword); -- How to insert into Customer table with ID of new userID
	INSERT INTO Customer(customerID)
		VALUES(LAST_INSERT_ID());
END;

$$ DELIMITER;

CALL insertCustomer("johnson2504", "lovetomyfamily");
---------------------------------------------------------------------------------------------------
DROP PROCEDURE IF EXISTS insertSalesman;

DELIMITER $$
CREATE PROCEDURE insertSalesman(IN _userName VARCHAR(50), IN _userPassword VARCHAR(50))
BEGIN
	DECLARE errorMessage VARCHAR(255);
	IF _userName IS NULL THEN 
	BEGIN
		SET errorMessage = "ERROR: Username must not be empty";
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = errorMessage;
	END;
	ELSEIF _userPassword IS NULL THEN
	BEGIN
		SET errorMessage = "ERROR: Password must not be empty";
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = errorMessage;
	END;
	ELSEIF EXISTS (SELECT * FROM User WHERE User.userName = _userName AND User.isActive = TRUE) THEN
	BEGIN
		SET errorMessage = "ERROR: User name has already existed";
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = errorMessage;
	END;
	END IF;
	INSERT INTO User(userName, userPassword)
		VALUES(_userName, _userPassword); -- How to insert into Customer table with ID of new userID
	INSERT INTO Salesman(salesmanID)
		VALUES(LAST_INSERT_ID());
END;

$$ DELIMITER;

CALL insertSalesman("michaelHavardCS", "CsismydreamatHavard2000");
--------------------------------------------------------------------------------------------------
DROP PROCEDURE IF EXISTS insertManager;

DELIMITER $$
CREATE PROCEDURE insertManager(IN _userName VARCHAR(50), IN _userPassword VARCHAR(50))
BEGIN
	DECLARE errorMessage VARCHAR(255);
	IF _userName IS NULL THEN 
	BEGIN
		SET errorMessage = "ERROR: Username must not be empty";
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = errorMessage;
	END;
	ELSEIF _userPassword IS NULL THEN
	BEGIN
		SET errorMessage = "ERROR: Password must not be empty";
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = errorMessage;
	END;
	ELSEIF EXISTS (SELECT * FROM User WHERE User.userName = _userName AND User.isActive = TRUE) THEN
	BEGIN
		SET errorMessage = "ERROR: User name has already existed";
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = errorMessage;
	END;
	END IF;
	INSERT INTO User(userName, userPassword)
		VALUES(_userName, _userPassword); -- How to insert into Customer table with ID of new userID
	INSERT INTO Manager(managerID)
		VALUES(LAST_INSERT_ID());
END;

$$ DELIMITER;

CALL insertManager("timmarketing1990", "20111990Marketing");
----------------------------------------------------------------------
DROP PROCEDURE IF EXISTS updateCustomer;

DELIMITER $$
CREATE PROCEDURE updateCustomer(IN _customerID INT, IN _userPassword VARCHAR(50), IN _firstName VARCHAR(50), IN _lastName VARCHAR(50), IN _email VARCHAR(50), IN _age INT, IN _gender VARCHAR(20), 
																IN _province VARCHAR(100), IN _city VARCHAR(100), IN _district VARCHAR(100), IN _customerAddress VARCHAR(200))
BEGIN
	DECLARE errorMess VARCHAR(255);
	IF (LENGTH(_userPassword) < 8) THEN
	BEGIN
		SET errorMess = 'ERROR: Password length must be greater than 8 characters';
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = errorMess;
	END;
	ELSEIF (_gender NOT IN ("M", "F", "Other")) THEN
	BEGIN
		SET errorMess = 'ERROR: Gender is incorrect';
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = errorMess;
	END;
	ELSEIF (_customerID IS NULL) THEN
	BEGIN
		SET errorMess = "ERROR: User ID must not be empty";
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = errorMess;
	END;
	ELSE
	BEGIN
		UPDATE User
			SET userPassword = _userPassword, firstName = _firstName, lastName = _lastName, email = _email, age = _age, gender = _gender
			WHERE userID = _customerID;
		UPDATE Customer 
			SET province = _province, city = _city, district = _district, customerAddress = _customerAddress
			WHERE customerID = _customerID;
	END;
	END IF;
END;
$$ DELIMITER;

CALL updateCustomer(5, "Nobodyisbetterthanme", "John", "Smith", "smithCS@havard.edu.vn", 18, "M",
										"New York City", "New York City", "Brooklyn", "24 Saint Jose");
---------------------------------Update procedure---------------------------------
----------------------------------------------------------------------------------
DROP PROCEDURE IF EXISTS updateSalesman;

DELIMITER $$
CREATE PROCEDURE updateSalesman(IN _salesma INT, IN _userPassword VARCHAR(50), IN _firstName VARCHAR(50), IN _lastName VARCHAR(50), IN _email VARCHAR(50), IN _age INT, IN _gender VARCHAR(20), 
																IN _position VARCHAR(30), IN _startingYear YEAR, IN _managerID INT)
BEGIN
	DECLARE errorMess VARCHAR(255);
	IF (LENGTH(_userPassword) < 8) THEN
	BEGIN
		SET errorMess = 'ERROR: Password length must be greater than 8 characters';
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = errorMess;
	END;
	ELSEIF (_gender NOT IN ("M", "F", "Other")) THEN
	BEGIN
		SET errorMess = 'ERROR: Gender is unidentified';
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = errorMess;
	END;
	ELSEIF (_salesman IS NULL) THEN
	BEGIN
		SET errorMess = "ERROR: User ID must not be empty";
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = errorMess;
	END;
	ELSEIF (_managerID IS NULL) THEN
	BEGIN
		SET errorMess = "ERROR: Manager ID of salesman must not be empty";
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = errorMess;
	END;
	ELSEIF (_startingYear > YEAR(CURDATE())) THEN
	BEGIN
		SET errorMess = "ERROR: Starting Year must not be greater than current year";
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = errorMess;
	END;
	ELSE
	BEGIN
		UPDATE User
			SET userPassword = _userPassword, firstName = _firstName, lastName = _lastName, email = _email, age = _age, gender = _gender
			WHERE userID = _salesmanID;
		UPDATE Salesman 
			SET position = _position, startingYear = _startingYear, managerID = _managerID
			WHERE salesmanID = _salesmanID;
	END;
	END IF;
END;
$$ DELIMITER;

CALL updateSalesman(17, "Bestdirectoreveer", "David", "Cameroon", "cameroonDirector@hollywood.org.us", 18, "M",
										"Senior 2", 2015, 26);
---------------------------------------------------------------------------
DROP PROCEDURE IF EXISTS updateManager;

DELIMITER $$
CREATE PROCEDURE updateManager(IN _managerID INT, IN _userPassword VARCHAR(50), IN _firstName VARCHAR(50), IN _lastName VARCHAR(50), IN _email VARCHAR(50), IN _age INT, IN _gender VARCHAR(20), 
																IN _position VARCHAR(30), IN _startingYear YEAR)
BEGIN
	DECLARE errorMess VARCHAR(255);
	IF (LENGTH(_userPassword) < 8) THEN
	BEGIN
		SET errorMess = 'ERROR: Password length must be greater than 8 characters';
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = errorMess;
	END;
	ELSEIF (_gender NOT IN ("M", "F", "Other")) THEN
	BEGIN
		SET errorMess = 'ERROR: Gender is unidentified';
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = errorMess;
	END;
	ELSEIF (_managerID IS NULL) THEN
	BEGIN
		SET errorMess = "ERROR: User ID must not be empty";
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = errorMess;
	END;
	ELSEIF (_startingYear > YEAR(CURDATE())) THEN
	BEGIN
		SET errorMess = "ERROR: Starting Year must not be greater than current year";
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = errorMess;
	END;
	ELSE
	BEGIN
		UPDATE User
			SET userPassword = _userPassword, firstName = _firstName, lastName = _lastName, email = _email, age = _age, gender = _gender
			WHERE userID = _managerID;
		UPDATE Manager 
			SET position = _position, startingYear = _startingYear
			WHERE managerID = _managerID;
	END;
	END IF;
END;
$$ DELIMITER;

CALL updateManager(17, "Bestdirectoreveer", "David", "Cameroon", "cameroonDirector@hollywood.org.us", 18, "M",
										"Manager of Vietnamese Books", 2015);

--------------------------------------Delete procedure----------------------------------------
DROP PROCEDURE IF EXISTS deleteCustomer;

DELIMITER $$
CREATE PROCEDURE deleteCustomer(IN _customerID INT)
BEGIN
	DECLARE errorMess VARCHAR(255);
	IF(_customerID IS NULL) THEN
	BEGIN	
		SET errorMess = 'Customer ID must not be empty';
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = errorMess;
	END;
	ELSE
	BEGIN
		IF NOT EXISTS (SELECT * FROM User, Customer
										WHERE User.userID = _customerID
											AND User.isActive = TRUE
											AND Customer.customerID = _customerID) THEN
		BEGIN
			SET errorMess = 'Customer ID does not exist or has already been deleted';
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = errorMess;
		END;
		ELSE
		BEGIN
			UPDATE User	
				SET User.isActive = FALSE
				WHERE User.userID = _customerID;
			
		END;
		END IF;
	END;
	END IF;
END;
$$ DELIMITER;

CALL deleteCustomer(2);
--------------------------------------------------------------------------------------------
DROP PROCEDURE IF EXISTS deleteSalesman;

DELIMITER $$
CREATE PROCEDURE deleteSalesman(IN _salesmanID INT)
BEGIN
	DECLARE errorMess VARCHAR(255);
	IF(_salesmanID IS NULL) THEN
	BEGIN	
		SET errorMess = 'Salesman ID must not be empty';
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = errorMess;
	END;
	ELSE
	BEGIN
		IF NOT EXISTS (SELECT * FROM User, Salesman
										WHERE User.userID = _salesmanID
											AND User.isActive = TRUE
											AND Salesman.salesmanID = _salesmanID) THEN
		BEGIN
			SET errorMess = 'Customer ID does not exist or has already been deleted';
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = errorMess;
		END;
		ELSE
		BEGIN
			UPDATE User	
				SET User.isActive = FALSE
				WHERE User.userID = _salesmanID;
			
		END;
		END IF;
	END;
	END IF;
END;
$$ DELIMITER;

CALL deleteSalesman(16);
-----------------------------------------------------------------------------
DROP PROCEDURE IF EXISTS deleteManager;

DELIMITER $$
CREATE PROCEDURE deleteManager(IN _managerID INT)
BEGIN
	DECLARE errorMess VARCHAR(255);
	IF(_managerID IS NULL) THEN
	BEGIN	
		SET errorMess = 'Salesman ID must not be empty';
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = errorMess;
	END;
	ELSE
	BEGIN
		IF NOT EXISTS (SELECT * FROM User, Manager
										WHERE User.userID = _managerID
											AND User.isActive = TRUE
											AND Manager.managerID = _managerID) THEN
		BEGIN
			SET errorMess = 'Salesman ID does not exist or has already been deleted';
			SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = errorMess;
		END;
		ELSE
		BEGIN
			UPDATE User	
				SET User.isActive = FALSE
				WHERE User.userID = _managerID;
			
		END;
		END IF;
	END;
	END IF;
END;
$$ DELIMITER;

CALL deleteManager(24);
---------------------------------Product-----------------------------------------------------------
