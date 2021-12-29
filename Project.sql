CREATE TABLE Products(product_id INT PRIMARY KEY,Product_name VARCHAR2(50),Description VARCHAR2(200),Standard_cost NUMBER,List_price NUMBER,Category_id INT);
INSERT INTO Products VALUES
(101,'Boat airdopes','Bluetooth 5.0,voice assistant supported,black',1100,999,111);
INSERT INTO Products VALUES
(102,'Fitness Trackers','Advanced fitness and health tracker',3000,2599,112);
INSERT INTO Products VALUES
(103,'Smartwatches','Smartwatch with Bluetooth calling',4500,3999,113);
INSERT INTO Products VALUES
(104,'Pen drive','Type c pen drive',1500,999,114);
INSERT INTO Products VALUES
(105,'Waching machine','Fully automatic front load washing machine',43000,36000,115);
INSERT INTO Products VALUES
(106,'Coffee maker','Ideal for 2-7 cups,750W',4000,3175,116);
INSERT INTO Products VALUES
(107,'Microwave oven','Samsung 28L convection and gril microwave oven',12000,11999,117);
INSERT INTO Products VALUES
(108,'Refrigerator','Whirlpool 245 litres 2 star frost free Double door',22000,20490,118);
INSERT INTO Products VALUES
(109,'Vaccum cleaner','Dyson v11 nickle blue absolute pro vaccum cleaner',55000,52900,119);
INSERT INTO Products VALUES
(110,'Airconditioner','Copper condenser,185v',35000,32004,120);
SELECT*FROM Products;
drop table Products;




CREATE TABLE Employees(employee_id INT PRIMARY KEY,first_name VARCHAR2(50),last_name VARCHAR2(50),email VARCHAR2(200),phone_number NUMBER,hire_date DATE,
manager_id INT,job_title VARCHAR2(100));

INSERT INTO Employees VALUES
(11,'anu','sharma','anu@gmail.com',9864675634,'13-08-2015',1,'Data analyst');
INSERT INTO Employees VALUES
(12,'ananthi','sharma','ananthi@gmail.com',8608491910,'03-08-2015',2,'Data engineer');
INSERT INTO Employees VALUES
(13,'amarnath','pillai','amarnath@gmail.com',7894589654,'20-07-2013',3,'Business analyst');
INSERT INTO Employees VALUES
(14,'clinton','pritheev','clinton@gmail.com',7708480901,'01-06-2015',4,'Satistician');
INSERT INTO Employees VALUES
(15,'collin','paul','collin@gmail.com',9842524655,'02-06-2014',5,'Customer service');
INSERT INTO Employees VALUES
(16, 'haritha', 'mohan', 'haritha@gmail.com', 7710589123, '22-07-2014',6,'Brand and positioning specialist');
INSERT INTO Employees VALUES
(17, 'shrihari', 'pillai', 'shrihari@gmail.com',9786592952,'01-07-2015',7,'Marketing manager');
INSERT INTO Employees VALUES
(18, 'jeeva', 'ananth', 'jeeva@gmail.com',8608491912, '02-06-201',8,'Receptionist');
INSERT INTO Employees VALUES
(19, 'jimesh', 'sharma', 'jimesh@gmail.com',9634565231, '06-05-2012',9,'Customer insight analyst');
INSERT INTO Employees VALUES
(20, 'giruba', 'dharan', 'giri@gmail.com',9842524655, '02-06-2012',10,'Web designer');

SELECT*FROM Employees;
drop table Employees;

CREATE TABLE Customers(cust_id INT PRIMARY KEY,cust_name VARCHAR2(50),address VARCHAR2(100),website VARCHAR2(100),credit_limit NUMBER);
INSERT INTO Customers VALUES
(1,'Premalatha','Maduari','Prema@gmail.com',50000);
INSERT INTO Customers VALUES
(2,'Sathish','Madurai','Sathish@gmail.com',50000);
INSERT INTO Customers VALUES
(3,'Soniya','Madurai','Soniya@gmail.com',40000);
INSERT INTO Customers VALUES
(4,'Poornima','Dindugal','Poornima@gmail.com',30000);
INSERT INTO Customers VALUES
(5,'Atchaya','Madurai','Atchaya@gmail.com',40000);
INSERT INTO Customers VALUES
(6,'Abinaya','Chennai','Abi@gmail.com',20000);
INSERT INTO Customers VALUES
(7,'Dharani','Chennai','Dharani@gmail.com',10000);
INSERT INTO Customers VALUES
(8,'Dhivya','Theni','Dhivya@gmail.com',20000);
INSERT INTO Customers VALUES
(9,'Santhiya','Thiruppur','Santhiya@gmail.com',40000);
INSERT INTO Customers VALUES
(10,'Sowmiya','Melur','Sowmiya@gmail.com',30000);

SELECT*FROM Customers;
drop table Customers; 

CREATE TABLE Orders(order_id INT , cust_id INT,status VARCHAR2(50),salesman_id INT,order_date DATE ,FOREIGN KEY(cust_id) REFERENCES Customers(cust_id));
ALTER TABLE Orders ADD order_id  INT PRIMARY KEY;
ALTER TABLE Orders ADD salesman_id ;
ALTER TABLE Orders ADD salesman_id INT;
ALTER TABLE Orders ADD FOREIGN KEY(salesman_id)REFERENCES Employees(employee_id); 
DESC Orders;

INSERT INTO Orders VALUES
(81,3,'shipped','01-Nov-17');
INSERT INTO Orders VALUES
(82,3,'shipped','01-Nov-17');
INSERT INTO Orders VALUES
(83,4,'shipped','13-Nov-17');
INSERT INTO Orders VALUES
(84,4,'shipped','13-Nov-17');
INSERT INTO Orders VALUES
(85,4,'shipped','13-Nov-17');
INSERT INTO Orders VALUES
(86,2,'shipped','27-Nov-17');
INSERT INTO Orders VALUES
(87,6,'shipped','27-Nov-17');
INSERT INTO Orders VALUES
(88,7,'shipped','16-Nov-17');
INSERT INTO Orders VALUES
(89,7,'pending','16-Nov-17');
INSERT INTO Orders VALUES
(90,5,'shipped','15-Nov-17');
INSERT INTO Orders VALUES
(91,4,'shipped','13-Feb-17');
INSERT INTO Orders VALUES
(92,4,'shipped','13-Mar-17');
INSERT INTO Orders VALUES
(93,6,'shipped','27-Dec-17');
UPDATE Orders SET salesman_id=11 WHERE order_id=81;
UPDATE Orders SET salesman_id=14 WHERE order_id=82;
UPDATE Orders SET salesman_id=14 WHERE order_id=83;
UPDATE Orders SET salesman_id=12 WHERE order_id=84;
UPDATE Orders SET salesman_id=14 WHERE order_id=85;
UPDATE Orders SET salesman_id=11 WHERE order_id=88;
UPDATE Orders SET salesman_id=15 WHERE order_id=87;
UPDATE Orders SET salesman_id=16 WHERE order_id=86;
UPDATE Orders SET salesman_id=14 WHERE order_id=89;
UPDATE Orders SET salesman_id=14 WHERE order_id=90;
UPDATE Orders SET salesman_id=14 WHERE order_id=91;
UPDATE Orders SET salesman_id=17 WHERE order_id=92;
UPDATE Orders SET salesman_id=20 WHERE order_id=93;

drop table Orders;
SELECT*FROM Orders;
ALTER TABLE Orders DROP COLUMN salesman_id;

CREATE TABLE Order_items(item_id INT PRIMARY KEY,order_id INT,product_id INT,Quantity NUMBER,unit_price NUMBER,
FOREIGN KEY(order_id) REFERENCES Orders(order_id),FOREIGN KEY(product_id) REFERENCES Products(product_id));

INSERT INTO Order_items VALUES
(1,81,106,3,2999);
INSERT INTO Order_items VALUES
(2,81,103,1,2599);
INSERT INTO Order_items VALUES
(3,83,104,4,15996);
INSERT INTO Order_items VALUES
(4,83,101,6,5994);
INSERT INTO Order_items VALUES
(5,85,102,2,72000);
INSERT INTO Order_items VALUES
(6,85,107,1,3175);
INSERT INTO Order_items VALUES
(7,85,108,1,11999);
INSERT INTO Order_items VALUES
(8,89,109,2,40980);
INSERT INTO Order_items VALUES
(9,89,103,1,52900);
INSERT INTO Order_items VALUES
(10,87,104,1,32004);

SELECT *FROM Order_items;

drop table Order_items;





SELECT Customers.cust_name ,Orders.order_date,Orders.status FROM Customers INNER JOIN Orders ON Customers.cust_id=Orders.cust_id 
WHERE TO_CHAR(Orders.order_date ,'MM-YYYY')='11-2017'; 

SELECT Customers.cust_name ,Orders.order_date,Orders.status, COUNT(Orders.order_date) FROM Customers INNER JOIN Orders ON Customers.cust_id=Orders.cust_id 
WHERE TO_CHAR(Orders.order_date ,'MM-YYYY')='11-2017' 
GROUP BY Customers.cust_name ,Orders.order_date,Orders.status;

SELECT* FROM Employees WHERE employee_id=121;


create table  Products(Product_id int generated by default as identity (start with 10 increment by 1) ,Product_name varchar2(50),Description varchar2(200),
Standard_cost number,List_price number,Category_id int,constraint pk_productid primary key(Product_id),foreign key (Category_id) references 
product_categories(Category_id));
drop table Products;

create table product_categories(Category_id int generated by default as identity (start with 100 increment by 1) ,Category_name varchar2(100),
constraint pk_Categoryid primary key(Category_id));
drop table product_categories;

create table Employees(employee_id int generated by default as identity (start with 200 increment by 1) ,first_name varchar2(50),last_name varchar2(50),
email varchar2(200),phone_number number,hire_date date,manager_id int,job_title varchar2(100),constraint pk_employeeid primary key(employee_id));
drop table Employees;

create table Customers(cust_id int generated by default as identity (start with 300 increment by 1),cust_name varchar2(50),address varchar2(100),
website varchar2(100),credit_limit number,constraint pk_customerid primary key(cust_id));
drop table Customers;

create table Orders(order_id int generated by default as identity (start with 400 increment by 1), cust_id int,status varchar2(50),salesman_id int,
order_date date,constraint pk_orderid primary key(order_id),foreign key(cust_id) references Customers(cust_id),
foreign key(salesman_id) references Employees(employee_id));
drop table Orders;

drop table Orders;

create table Order_items(item_id int generated by default as identity (start with 500 increment by 1),order_id int,Product_id int,Quantity number,
unit_price number,constraint pk_itemid primary key(item_id),foreign key(order_id) references Orders(order_id),
foreign key(Product_id) references Products(Product_id));




--Product_Category
create or replace package online_package AS 
procedure addCategories(
cat_name  in product_categories.category_name%type,
p_status out varchar2,
p_error out varchar2);

procedure delCategories(cat_id  in product_categories.category_id%type,
                      p_status out varchar2,
                      p_error out varchar2);
                      
procedure addCustomers(c_name in Customers.cust_name%type,
                    c_addr in Customers.address%type,
                    c_web in Customers.website%type,
                    c_limit in Customers.credit_limit%type,
                    c_status out varchar2,
                    c_error out varchar2);
    
procedure delCustomers(c_id in Customers.cust_id%type,
                       c_status out varchar2,
                       c_error out varchar2); 

procedure addProduct( 
   p_name in  Products.product_name%type, 
   p_des  in  Products.description%type,
   p_scost in Products.standard_cost%type,
   p_price in products.list_price%type,
   p_cat  in  products.category_id%type,
   pro_status  out varchar2,
   pro_error out varchar2);

procedure delProduct(p_id in Products.product_id%type,
                     pro_status  out varchar2,
                     pro_error out varchar2);
                     
procedure addEmployee(
e_fname in Employees.first_name%type,
e_lname in Employees.last_name%type,
e_mail in Employees.email%type,
e_pnumber in Employees.phone_number%type,
e_date in Employees.hire_date%type,
e_mid in Employees.manager_id%type,
e_title in Employees.job_title%type,
e_status out varchar2,
e_error out varchar2);

procedure delEmployee(e_id in Employees.employee_id%type,
                       e_status out varchar2,
                       e_error out varchar2);
                       
procedure addOrder(
O_cust_id  in Orders.cust_id%type,
Order_status  in Orders.status%type,
O_emp_id  in orders.salesman_id%type,
O_date in  Orders.order_date%type,
O_status out varchar2,
O_error out varchar2);


procedure updateOrder(O_id in Orders.order_id%type,
                   Order_status  in Orders.status%type,                   
                   O_status out varchar2,
                   O_error out varchar2);                       
                          
procedure addOrderitems(
Oitem_oid in Order_items.order_id%type,
Oitem_pid in Order_items.product_id%type,
Oitem_quan  in Order_items.quantity%type,
Oitem_uprice in  Order_items.unit_price%type,
Oitem_status out varchar2,
Oitem_error out varchar2);

procedure delOrderitems(Oitem_id  in Order_items.item_id%type,
                   Oitem_status out varchar2,
                   Oitem_error out varchar2);                         
                      
end online_package;                      
/
--package created



create or replace package body online_package as 
procedure addCategories(
cat_name  in product_categories.category_name%type,
p_status out varchar2,
p_error out varchar2)
is
begin
insert into product_categories(category_name) values(cat_name);
if sql%rowcount>0
then p_status:='inserted';
end if;
commit;
exception when others then
p_status:='product category does not exist';
p_error:='sqlcode'||sqlerrm;
end addCategories;

procedure delCategories(cat_id  in product_categories.category_id%type, 
                        p_status out varchar2,
                        p_error out varchar2) 
is 
begin 
delete from product_categories where category_id = cat_id; 
if sql%rowcount=0
then p_status:='category id deleted:'||cat_id ;
end if;
commit;
exception when others then
p_status:='category id does not exist:'||cat_id;
p_error:='sql code'||sqlerrm;
end delCategories;


procedure addCustomers( 
      c_name in Customers.cust_name%type, 
      c_addr in Customers.address%type,
      c_web in Customers.website%type,
      c_limit in Customers.credit_limit%type,
      c_status out varchar2,
      c_error out varchar2)
is
begin
insert into Customers(cust_name,address,website,credit_limit) 
values(c_name,c_addr,c_web,c_limit);
if sql%rowcount>0
then c_status:='inserted';
end if;
commit;
exception when others then
c_status:='customers details does not exist';
c_error:='sqlcode'||sqlerrm;
end addCustomers;

procedure delCustomers(c_id in Customers.cust_id%type,
                        c_status out varchar2,
                       c_error out varchar2) 
is 
begin
delete from Customers where cust_id = c_id; 
if sql%rowcount=0
then c_status:='customer id deleted:' ||c_id;
end if;
commit;
exception when others then
c_status:='customer id does not exist:' ||c_id;
c_error:='sqlcode'||sqlerrm;
end delCustomers;

procedure addProduct( 
   p_name  in Products.product_name%type, 
   p_des  in  Products.description%type,
   p_scost in  Products.standard_cost%type,
   p_price in  Products.list_price%type,
   p_cat in   Products.category_id%type,
   pro_status out varchar2,
   pro_error  out varchar2)
   
is
begin
insert into Products(product_name,description,standard_cost,list_price,category_id)
values(p_name,p_des,p_scost,p_price,p_cat);
if sql%rowcount>0
then pro_status:='products inserted';
end if;
commit;
exception when others then
pro_status:='products does not exist';
pro_error:='sqlcode'||sqlerrm;
end addProduct;  
   
procedure delProduct(p_id in  Products.product_id%type,
                     pro_status out  varchar2,
                     pro_error out varchar2)
 is 
 begin
delete from Products where product_id=p_id;
if sql%rowcount=0
then pro_status:='product id deleted:' || p_id;
end if;
commit;
exception when others then
pro_status:='product id does not exist:' ||p_id;
pro_error:='sqlcode'||sqlerrm;
end delProduct;

procedure addEmployee(
e_fname in Employees.first_name%type,
e_lname in Employees.last_name%type,
e_mail in Employees.email%type,
e_pnumber in Employees.phone_number%type,
e_date in Employees.hire_date%type,
e_mid in Employees.manager_id%type,
e_title in Employees.job_title%type,
e_status out varchar2,
e_error out varchar2)

is 
begin
insert into Employees(first_name,last_name,email,phone_number,hire_date,manager_id,job_title)
values(e_fname,e_lname,e_mail,e_pnumber,e_date,e_mid,e_title);
if sql%rowcount>0
then e_status:='employees inserted ';
end if;
commit;
exception when others then
e_status:='employees does not exist';
e_error:='sqlcode'||sqlerrm;
end addEmployee;  
   
procedure delEmployee(e_id in Employees.employee_id%type,
                     e_status out  varchar2,
                     e_error out varchar2)
is 
begin
delete from Employees where employee_id=e_id;
if sql%rowcount=0
then e_status:='employee id deleted: '||e_id;
end if;
commit;
exception when others then
e_status:='employee id does not exist:'||e_id;
e_error:='sqlcode'||sqlerrm;
end delEmployee;

procedure addOrder(
O_cust_id  in Orders.cust_id%type,
Order_status in Orders.status%type,
O_emp_id  in orders.salesman_id%type,
O_date in Orders.order_date%type,
O_status out varchar2,
O_error out varchar2)

is
begin
insert into Orders(cust_id,status,salesman_id,order_date)
values(O_cust_id,Order_status,O_emp_id,O_date);
if sql%rowcount>0
then O_status:='inserted';
end if;
commit;
exception when others then
O_status:=' order does not exist'; 
O_error:='sqlcode'||sqlerrm;
end addOrder;  
 
 procedure updateOrder(O_id in Orders.order_id%type,
                       Order_status in  Orders.status%type,
                   O_status out varchar2,
                   O_error out varchar2)
                   
is 
begin
update Orders set status=Order_status where order_id=O_id  ;
if sql%rowcount>0
then O_status:='order updated';
end if;
commit;
exception when others then
O_status:=' order does not exist'; 
O_error:='sqlcode'||sqlerrm;
end  updateOrder;



procedure addOrderitems(
Oitem_oid in Order_items.order_id%type,
Oitem_pid in Order_items.product_id%type,
Oitem_quan in Order_items.quantity%type,
Oitem_uprice in Order_items.unit_price%type,
Oitem_status out varchar2,
Oitem_error out varchar2)
is
begin
insert into Order_items(order_id,product_id,quantity,unit_price)
values(Oitem_oid,Oitem_pid,Oitem_quan,Oitem_uprice);
if sql%rowcount>0
then Oitem_status:='inserted';
end if;
commit;
exception when others then
Oitem_status:='does not exist';
Oitem_error:='sqlcode'||sqlerrm;
end addOrderitems;  

procedure delOrderitems(Oitem_id  in Order_items.item_id%type,
                   Oitem_status out varchar2,
                   Oitem_error out varchar2)
is
begin
delete from Order_items where item_id=Oitem_id;
if sql%rowcount=0
then Oitem_status:='Item id deleted';
end if;
commit;
exception when others then
Oitem_status:='Item  id does not exist';
Oitem_error:='sqlcode'||sqlerrm;
end delOrderitems;


end online_package; 
/




--CUSTOMERS
--insert
declare
c_status varchar2(50);
c_error varchar2(100);

begin
--online_package.addCustomers('Premalatha','Maduari','Prema@gmail.com',50000,c_status,c_error);
--online_package.addCustomers('Sathish','Madurai','Sathish@gmail.com',50000,c_status,c_error);
--online_package.addCustomers('Soniya','Madurai','Soniya@gmail.com',40000,c_status,c_error);
online_package.addCustomers('Abinaya','Chennai','Abi@gmail.com',20000,c_status,c_error);
--online_package.addCustomers('.Poornima','Dindugal','Poornima@gmail.com',30000,c_status,c_error);
dbms_output.put_line(c_status||' '||c_error);

end;
/
set serveroutput on
--delete
declare
c_id Customers.cust_id%type:=&enter_id;
c_status varchar2(50);
c_error varchar2(100);
begin
online_package.delCustomers(c_id,c_status,c_error);
dbms_output.put_line(c_status||' '||c_error);

end delCustomers;
/
set serveroutput on
select*from Customers;




--Product
--insert
declare
pro_status varchar2(50);
pro_error varchar2(100);

begin
--online_package.addProduct('Pen drive','Type c pen drive',1500,999,102,pro_status,pro_error);
--online_package.addProduct('Waching machine','Fully automatic front load washing machine',43000,36000,103,pro_status,pro_error);
online_package.addProduct('Smartwatches','Smartwatch with Bluetooth calling',4500,3999,104,pro_status,pro_error);
--online_package.addProduct('Refrigerator','Whirlpool 245 litres 2 star frost free Double door',22000,20490,103,pro_status,pro_error);
dbms_output.put_line(pro_status||' '||pro_error);

end;
/
set serveroutput on
select*from Products;
--delete
declare
p_id Products.product_id%type:=&enter_id;
pro_status varchar2(50);
pro_error varchar2(100);
begin
online_package.delProduct(p_id,pro_status,pro_error);
dbms_output.put_line(pro_status||' '||pro_error);

end delProduct;
/
set serveroutput on
--EMPLOYEE.
--insert
declare
e_status  varchar2(50);
e_error varchar2(100);
begin
--online_package.addEmployee('anu','sharma','anu@gmail.com',9864675634,'13-08-2015',1,'Data analyst',e_status,e_error);
--online_package.addEmployee('ananthi','sharma','ananthi@gmail.com',8608491910,'03-08-2015',2,'Data engineer',e_status,e_error);
--online_package.addEmployee('amarnath','pillai','amarnath@gmail.com',7894589654,'20-07-2013',3,'Business analyst',e_status,e_error);
online_package.addEmployee('clinton','pritheev','clinton@gmail.com',7708480901,'01-06-2015',4,'Satistician',e_status,e_error);
--online_package.addEmployee('haritha', 'mohan', 'haritha@gmail.com', 7710589123, '22-07-2014',6,'Brand and positioning specialist',e_status,e_error);
dbms_output.put_line(e_status||' '||e_error);
end;
/
--delete
declare
e_id Employees.employee_id%type:=&enter_id;
e_status varchar2(50);
e_error varchar2(100);
begin
online_package.delEmployee(e_id,e_status,e_error);
dbms_output.put_line(e_status||' '||e_error);

end delEmployees;
/

             
 --ORDERS
 --INSERT
 declare
O_status varchar2(50);
O_error varchar2(100);
begin
--online_package.addOrder(300,'shipped',200,'01-Jan-17',O_status,O_error);
--online_package.addOrder(321,'shipped',201,'12-Mar-17',O_status,O_error);
online_package.addOrder(322,'shipped',200,'13-Nov-17',O_status,O_error);
--online_package.addOrder(323,'shipped',220,'03-Jul-17',O_status,O_error);
--online_package.addOrder(304,'shipped',204,'13-Feb-17',O_status,O_error);
dbms_output.put_line(O_status||' '||O_error);
end;
/

set serveroutput on
declare
--O_id  Orders.order_id%type:=&enter_id;
O_status varchar2(50);
O_error varchar2(100);
begin
online_package.updateOrder(425,'cancelled',O_status,O_error);
--online_package.updateOrder('pending',O_status,O_error);
dbms_output.put_line(O_status||' '||O_error);

end;
/


set serveroutput on 
select*from Orders;

--ORDER ITEMS
--INSERT
 declare
Oitem_status varchar2(50);
Oitem_error varchar2(100);
begin
--online_package.addOrderitems(405,10,3,2999,Oitem_status,Oitem_error);
online_package.addOrderitem(406,11,1,2599,Oitem_status,Oitem_error);
--online_package.addOrderitem(407,13,4,15999,Oitem_status,Oitem_error);
--online_package.addOrderitem(408,14,1,3175,Oitem_status,Oitem_error);
--online_package.addOrderitem(409,15,2,20000,Oitem_status,Oitem_error);
dbms_output.put_line(Oitem_status||' '||Oitem_error);
end;
/
select*from order_items;

--delete
declare
Oitem_id Order_items.order_id%type:=&enter_id;
Oitem_status varchar2(50);
Oitem_error varchar2(100);
begin
online_package.delOrderitems(Oitem_id,Oitem_status,Oitem_error);
dbms_output.put_line(Oitem_status||' '||Oitem_error);

end delOrderitems;
/

--product category
--insert
declare
p_status varchar2(50);
p_error varchar2(100);

begin

online_package.addCategories('Cosmetics',p_status,p_error);
dbms_output.put_line(p_status||' '||p_error);
end;
/
--delete
declare
cat_id product_categories.category_id%type:=&enter_id;
p_status varchar2(50);
p_error varchar2(100);
begin
online_package.delCategories(cat_id,p_status,p_error);
dbms_output.put_line(p_status||' '||p_error);

end delCategories;
/
select*from product_categories;







