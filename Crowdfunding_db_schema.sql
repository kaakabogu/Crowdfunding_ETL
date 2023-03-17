----- first table
--Delete the old table
DROP TABLE campaign;
--Create a new table
CREATE TABLE campaign(
  cd_id INT PRIMARY KEY,
    category_ids VARCHAR(30),
	contact_id INT,
    company_name VARCHAR(30),
    description	VARCHAR(30),
	goal INT, 
	pledged	INT,
	outcome VARCHAR (30),
	backers_count INT,
    country VARCHAR (10), 
    currency VARCHAR (10),
	launch_date DATE,
	end_date DATE,
	staff_pick VARCHAR (30),
	spotlight VARCHAR (30),
	subcategory_ids VARCHAR (30)
);
--Populate the table data
SELECT * FROM campaign;



----- Second table
--Delete the old table
DROP TABLE category;
--Create a new table
CREATE TABLE category(
 category VARCHAR(20) PRIMARY KEY,
    category_ids VARCHAR(20)
);
--Populate the table data
SELECT * FROM category;



----- Third table
--Delete the old table
DROP TABLE subcategory;
--Create a new table
CREATE TABLE subcategory(
 subcategory VARCHAR(20) PRIMARY KEY,
   subcategory_ids VARCHAR(20)
);
--Populate the table data
SELECT * FROM subcategory;

