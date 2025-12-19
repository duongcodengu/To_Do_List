CREATE TABLE Users (
User_id int IDENTITY(1,1) PRIMARY KEY,
Email nvarchar not null unique,
Password_hash varchar(255) not null,
Full_name varchar(255),
Create_at datetime not null default getdate(),
);
Create table tasks(
Task_id int identity(1,1) primary key,
user_id int not null ,
title varchar(255) not null,
Descrition nvarchar null,
status varchar(10) not null
check (status in ('Pending' , 'Complete')),
due_date Datetime null,
Create_at datetime not null Default getdate(),
Constraint FK_Task_User
Foreign key (user_id)
References Users(User_id)
ON DELETE CASCADE
);