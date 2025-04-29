DROP DATABASE IF EXISTS Hotel;
CREATE DATABASE Hotel;
USE Hotel;

CREATE TABLE Guest (
    GuestId INT PRIMARY KEY,
    FirstName VARCHAR(100),
    LastName VARCHAR(100),
    PhoneNumber VARCHAR(100),
    Email VARCHAR(100)
);

CREATE TABLE PaymentType (
	PaymentTypeID INT PRIMARY KEY,
    Type VARCHAR(50)
);

CREATE TABLE RoomType (
    RoomTypeId INT PRIMARY KEY,
    TypeName VARCHAR(100) NOT NULL,  
    Description TEXT,                 
    BasePrice DECIMAL(10, 2)     
);

CREATE TABLE Room (
    RoomId INT PRIMARY KEY,
    RoomNumber VARCHAR(10) NOT NULL,
    RoomTypeId INT NOT NULL,          
    CONSTRAINT fk_RoomType
      FOREIGN KEY (RoomTypeId)
      REFERENCES RoomType(RoomTypeId)
);

CREATE TABLE Reservation (
    ReservationID INT PRIMARY KEY,
    CheckInDate DATETIME NOT NULL,
    CheckOutDate DATETIME NOT NULL,     
    NumGuests INT NOT NULL,
    GuestID INT NOT NULL,
    CONSTRAINT fk_guest
      FOREIGN KEY (GuestID)
      REFERENCES guest(GuestID),
	RoomID INT NOT NULL,
	CONSTRAINT fk_room
	  FOREIGN KEY (RoomID)
      REFERENCES room(RoomID),
	PaymentTypeID INT NOT NULL,
    CONSTRAINT fk_paymenttype
	  FOREIGN KEY (PaymentTypeID)
      REFERENCES paymenttype(PaymentTypeID)
);

