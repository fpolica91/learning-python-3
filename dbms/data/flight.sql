
CREATE TABLE AIRPORT (
    ID INTEGER PRIMARY KEY AUTOINCREMENT,
    NAME TEXT NOT NULL,
);


CREATE TABLE FLIGHT(
  ID INTEGER PRIMARY KEY AUTOINCREMENT,
  DEPARTURE_AIRPORT_ID INTEGER NOT NULL,
  ARRIVAL_AIRPORT_ID INTEGER NOT NULL,
  FOREIGN KEY (DEPARTURE_AIRPORT_ID) REFERENCES AIRPORT(ID),
  FOREIGN KEY (ARRIVAL_AIRPORT_ID) REFERENCES AIRPORT(ID),
  DEPARTURE_DATE VARCHAR(20) NOT NULL,
  ARRIVAL_DATE VARCHAR(20) NOT NULL,
);



CREATE TABLE PLANE(
   PLANE_ID INTEGER PRIMARY KEY AUTOINCREMENT,
   FLIGHT_ID INTEGER,
   FOREIGN KEY(FLIGHT_ID) REFERENCES FLIGHT(ID)  
   INT CAPACITY INT NOT NULL DEFAULT 0,
);

CREATE TABLE PASSENGER(
  ID INTEGER PRIMARY KEY AUTOINCREMENT, 
  NAME TEXT NOT NULL,
  BOOKING_ID INTEGER NOT NULL,
  EMAIL TEXT NOT NULL UNIQUE,
  FOREIGN KEY(BOOKING_ID) REFERENCES BOOKING(ID)
);

CREATE TABLE BOOKING(
  ID INTEGER PRIMARY KEY AUTOINCREMENT,
  PASSENGER_ID INTEGER NOT NULL, 
  PLANE_ID INTEGER NOT NULL, 
  FOREIGN KEY (PASSENGER_ID) REFERENCES PASSENGER(ID),
  FOREIGN KEY (PLANE_ID) REFERENCES PLANE(ID),
  SEAT_NUMBER INT NOT NULL UNIQUE,
);