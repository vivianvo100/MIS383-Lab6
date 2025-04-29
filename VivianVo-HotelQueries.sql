SELECT g.FirstName, g.LastName, r.RoomID, r.CheckInDate, r.CheckOutDate
FROM reservation r
JOIN guest g ON r.GuestID = g.GuestID
WHERE r.CheckOutDate BETWEEN '2023-07-01' AND '2023-07-31';
-- returns nothing because none of my data is from 2023

SELECT g.FirstName, g.LastName, r.RoomID, r.CheckInDate, r.NumGuests
FROM reservation r
JOIN guest g ON r.GuestID = g.GuestID
WHERE g.FirstName = 'Amanda' AND g.LastName = 'Smith';
-- returns Amanda Smith, roomId, CheckInDate and NumGuests

SELECT rm.RoomNumber, r.reservationID, rt.BasePrice
FROM room rm
LEFT JOIN reservation r ON rm.RoomID = r.RoomID
JOIN roomtype rt ON rm.RoomTypeID = rt.RoomTypeID;
-- returns roomNumber, reservationId and the room price

SELECT g.FirstName, g.LastName, COUNT(r.reservationID) AS ReservationCount
FROM guest g
LEFT JOIN reservation r ON g.GuestID = r.GuestID
GROUP BY g.GuestID
ORDER BY ReservationCount DESC, g.LastName ASC;
-- returns first and last names of guests and how many reservations they have

SELECT FirstName, LastName, PhoneNumber, Email
FROM guest
WHERE PhoneNumber = '9481024836';
-- returns name, emailaddress and phone number

