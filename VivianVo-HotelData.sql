INSERT INTO guest (GuestID, FirstName, LastName, PhoneNumber, Email ) VALUES
(1, 'Vivian', 'Vo', '6192840294','vivianv@yahoo.com'),
(2, 'Jeremiah', 'Pendergrass','4280593019','jjpend@gmail.com'),
(3, 'John', 'Pork', '1374920495' ,'porky@icloud.com'),
(4, 'Jimmy','Smith','3850294417', 'jimmys@gmail.com'),
(5, 'Amanda','Smith','9481024836','asmith@icloud.com'),
(6, 'Anna','Banana','6351827461','banana12@gmail.com'),
(7, 'Bob','King','8583726103','minions@gmail.com'),
(8, 'Kevin','Garcia','1173620936','kevinkevin@yahoo.com');

INSERT INTO paymenttype (PaymentTypeID, Type) VALUES
(1, 'Credit Card'),
(2, 'Cash'),
(3, 'Check');

INSERT INTO roomtype (RoomtypeID, TypeName, Description, BasePrice) VALUES
(1, 'Single Room','A room with one twin sized bed', 300.00),
(2, 'Double Room', 'A room with two twin sized beds', 400.00),
(3, 'Queen Room', 'A room with one queen sized bed', 350.00),
(4, 'Triple Room', 'A room with one twin sized bed and a bunk bed', 475.00);

INSERT INTO room (roomID, roomNumber, roomTypeID) VALUES
(1, 201, 1),
(2, 202, 2),
(3, 203, 3),
(4, 301, 1),
(5, 302, 2),
(6, 303, 4),
(7, 401, 1),
(8, 402, 1),
(9, 401, 3);

INSERT INTO reservation (reservationID, CheckInDate, CheckOutDate, NumGuests,
	GuestID, RoomID, PaymentTypeID) VALUES
(1, '2025-05-01 15:00:00', '2025-05-05 11:00:00', 1, 1, 1, 1),
(2, '2025-05-03 16:00:00', '2025-05-06 10:00:00', 2, 2, 3, 2),
(3, '2025-05-04 14:00:00', '2025-05-10 11:00:00', 2, 3, 9, 1),
(4, '2025-05-07 15:30:00', '2025-05-09 10:30:00', 1, 4, 8, 3),
(5, '2025-05-08 13:00:00', '2025-05-12 12:00:00', 3, 5, 2, 2),
(6, '2025-05-10 16:00:00', '2025-05-15 11:00:00', 2, 6, 5, 1),
(7, '2025-05-11 15:00:00', '2025-05-13 12:00:00', 1, 7, 4, 3),
(8, '2025-05-12 14:00:00', '2025-05-18 11:30:00', 3, 8, 6, 2);

DELETE FROM Guest WHERE FirstName='Jeremiah' AND LastName='Pendergrass';
