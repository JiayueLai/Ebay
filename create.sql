drop table if exists User;
drop table if exists Item;
drop table if exists Category;
drop table if exists Bid;
create table User(
	UserID TEXT PRIMARY KEY,
	Rating INTEGER,
	Location TEXT,
	Country TEXT
);
create table Item(
	ItemID INTEGER PRIMARY KEY,
	Name TEXT,
	SellerID TEXT,
	Currently REAL,
	Buy_Price REAL,
	First_Bid REAL,
	Number_of_Bids INTEGER,
	Started DATETIME,
	Ends DATETIME,
	Description TEXT,
	FOREIGN KEY(SellerID) REFERENCES User(UserID)
);
create table Category(
	ItemID INTEGER,
	Category TEXT,
	PRIMARY KEY(ItemID,Category),
	FOREIGN KEY(ItemID) REFERENCES Item(ItemID)
);
create table Bid(
	ItemID INTEGER,
	BidderID TEXT,
	Time TEXT,
	Amount REAL,
	PRIMARY KEY(ItemID,BidderID,Time),
	FOREIGN KEY(BidderID) REFERENCES User(UserID),
	FOREIGN KEY(ItemID) REFERENCES Item(ItemID)
);
DROP TABLE if exists CurrentTime;
CREATE TABLE CurrentTime(
	PresentTime DATETIME
);
INSERT into CurrentTime values ("2001-12-20 00:00:01");
SELECT * from CurrentTime;
