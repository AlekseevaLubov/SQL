-- HW2

-- 1. Создать таблицу employees
create table employees(
	id serial primary key,
	employee_name varchar(50) not null
);

select * from employees;

-- 2. Наполнить таблицу employees 70 строками
insert into employees (employee_name)
values 
('Matthew_Lavoie'),
('Dallas_Vanderwal'),
('Ruben_Austin'),
('Chong_Myrick'),
('Robert_Robinson'),
('Ruth_Oliver'),
('Shirley_Jacobson'),
('Emil_Peterson'),
('Justin_Negrete'),
('Karen_Rivera'),
('Robert_Banks'),
('Edna_Asante'),
('David_Pocius'),
('Freida_Miller'),
('Richard_Stumbaugh'),
('Casandra_Howard'),
('Geraldine_Jackson'),
('Jason_Casey'),
('Robert_Stepp'),
('Candice_Easter'),
('Laurie_Holt'),
('William_Wilkison'),
('Forrest_Carboneau'),
('Kristie_Oliver'),
('Geoffrey_Robb'),
('Robert_Garza'),
('Robert_Ward'),
('Claudia_Cobbs'),
('Ann_Orozco'),
('Leo_Boyd'),
('Christina_Meier'),
('Wendy_Rosenbarger'),
('Vickie_Davis'),
('Laura_Bledsaw'),
('Richard_Brady'),
('Della_Taylor'),
('John_Beaton'),
('Teresa_Magoun'),
('Mindy_Theisen'),
('Mary_Smith'),
('Peter_Fritz'),
('James_Fretwell'),
('Norma_Greene'),
('Daniel_Pike'),
('Elias_Colbert'),
('Alexander_Goble'),
('Cody_Richardson'),
('Naomi_Warren'),
('Russell_Kropf'),
('Kathy_Tadych'),
('Lorene_Pring'),
('Michael_Thurman'),
('Deborah_Gross'),
('Frank_Slaughter'),
('Stella_Young'),
('Victor_Farmer'),
('Samuel_Smith'),
('Donna_Pfeffer'),
('Maria_Jimenez'),
('Connie_Zabel'),
('Andrew_Deleon'),
('James_Riess'),
('Elena_Turner'),
('Nancy_Kelly'),
('Martin_Goff'),
('Bryan_Gilbert'),
('Margaret_Robinson'),
('Maria_Smith'),
('Robert_Craze'),
('Gregory_Lee')
;


-- 3.Создать таблицу salary
create table salary (
	id serial primary key,
	monthly_salary int not null
);

select * from salary;

-- 4.Наполнить таблицу salary 15 строками:
insert into salary(monthly_salary)
values
(1000),
(1100),
(1200),
(1300),
(1400),
(1500),
(1600),
(1700),
(1800),
(1900),
(2000),
(2100),
(2200),
(2300),
(2400),
(2500);

-- 5.	Создать таблицу employee_salary
create table employee_salary(
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null
);

select * from employee_salary;

-- 6.Наполнить таблицу employee_salary 40 строками. в 10 строк из 40 вставить несуществующие employee_id
insert into employee_salary(employee_id, salary_id)
values 
(3, 7),
(1, 4),
(5, 9),
(40, 13),
(23, 4),
(11, 2),
(52, 10),
(15, 13),
(26, 4),
(16, 1),
(33, 7),
(2, 3),
(6, 12),
(7, 14),
(8, 1),
(50, 2),
(61, 5),
(70, 10),
(22, 15),
(34, 14),
(35, 13),
(36, 12),
(37, 11),
(38, 7),
(39, 6),
(60, 5),
(41, 4),
(42, 3),
(43, 2),
(44, 1),
(71, 1),
(72, 2),
(73, 3),
(74, 4),
(75, 5),
(76, 6),
(77, 7),
(78, 8),
(79, 9),
(80, 10);

-- 7.Создать таблицу roles
create table roles(
	id serial primary key,
	role_name int not null unique
);

select * from roles;

-- 8.Поменять тип столба role_name с int на varchar(30)
alter table roles 
alter column role_name type varchar(30) using role_name::varchar(30);

-- 9.Наполнить таблицу roles 20 строками:
insert into roles(role_name)
values
('Junior Python developer'),
('Middle Python developer'),
('Senior Python developer'),
('Junior Java developer'),
('Middle Java developer'),
('Senior Java developer'),
('Junior JavaScript developer'),
('Middle JavaScript developer'),
('Senior JavaScript developer'),
('Junior Manual QA engineer'),
('Middle Manual QA engineer'),
('Senior Manual QA engineer'),
('Project Manager'),
('Designer'),
('HR'),
('CEO'),
('Sales manager'),
('Junior Automation QA engineer'),
('Middle Automation QA engineer'),
('Senior Automation QA engineer');


-- 10.	Создать таблицу roles_employee
create table roles_employee(
	id serial primary key,
	employee_id int not null unique,
	role_id int not null,
	foreign key(employee_id)
		references employees(id),
	foreign key(role_id)
		references roles(id)
);
select * from roles_employee;

-- 11.Наполнить таблицу roles_employee 40 строками:
insert into roles_employee(employee_id, role_id)
values 
(7, 2),
(20, 4),
(3, 9),
(5, 13),
(23, 4),
(11, 2),
(10, 9),
(22, 13),
(21, 3),
(34, 4),
(6, 7),
(69, 1),
(1, 2),
(2, 4),
(4, 9),
(8, 13),
(9, 4),
(12, 2),
(13, 9),
(14, 15),
(15, 3),
(25, 4),
(26, 12),
(27, 14),
(28, 9),
(29, 13),
(30, 3),
(35, 2),
(36, 9),
(37, 13),
(40, 3),
(44, 5),
(45, 4),
(46, 9),
(50, 10),
(51, 8),
(53, 2),
(55, 9),
(60, 15),
(70, 3);










