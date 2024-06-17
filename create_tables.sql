drop table chunks;
drop table vectors;
drop table BOOKS;
  
create table BOOKS
("ID" NUMBER NOT NULL,
"NAME" VARCHAR2(100) NOT NULL,
 "USERID" VARCHAR2(100) NOT NULL,
PRIMARY KEY ("ID")  
);


create table CHUNKS 
(ID VARCHAR2(64) NOT NULL,
CHUNK CLOB,
PAGE_NUM VARCHAR2(10),
BOOK_ID NUMBER,
PRIMARY KEY ("ID"),
CONSTRAINT fk_book
        FOREIGN KEY (BOOK_ID)
        REFERENCES BOOKS (ID)
);


create table VECTORS
("ID" VARCHAR2(64) NOT NULL,
"VEC" VECTOR,
PRIMARY KEY ("ID")
);

delete from VECTORS;
delete from CHUNKS;
delete from BOOKS;

