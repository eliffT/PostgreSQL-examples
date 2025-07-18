-- 1. test veritabanınızda employee isimli sütun bilgileri id(INTEGER), name VARCHAR(50), birthday DATE, email 
-- VARCHAR(100) olan bir tablo oluşturalım.

CREATE TABLE employee (
	id SERIAL PRIMARY KEY,
	name VARCHAR(50), 
	email VARCHAR(100),
	birthday DATE
);


--2. Oluşturduğumuz employee tablosuna 'Mockaroo' servisini kullanarak 50 adet veri ekleyelim.

insert into employee (name, email, birthday) values ('Misty Lumsdale', null, '1996-04-08');
insert into employee (name, email, birthday) values ('Karita Milam', null, null);
insert into employee (name, email, birthday) values ('Honor Hopewell', 'hhopewell2@over-blog.com', null);
insert into employee (name, email, birthday) values ('Ninnette Lorens', null, '1963-11-19');
insert into employee (name, email, birthday) values ('Roxana Lantry', 'rlantry4@qq.com', '1976-11-21');
insert into employee (name, email, birthday) values ('Grace Emes', 'gemes5@sourceforge.net', '1991-08-14');


-- 3. Sütunların her birine göre diğer sütunları güncelleyecek 5 adet UPDATE işlemi yapalım.


UPDATE employee SET email = 'new@email.com' WHERE id = 2 RETURNING *;

UPDATE employee SET birthday = '2000-01-01' WHERE name = 'Gorden Ruter' RETURNING 

UPDATE employee SET name = 'Updated Name' WHERE birthday = '1980-03-27' RETURNING *;

UPDATE employee SET name = 'Anonymous' WHERE email = 'cpepisl@apple.com' RETURNING *;

UPDATE employee SET email = 'birth@updated.com' WHERE birthday IN('1987-07-06', '1977-02-09') RETURNING *;


-- 4. Sütunların her birine göre ilgili satırı silecek 5 adet DELETE işlemi yapalım. 	

DELETE FROM employee WHERE id = 27;

DELETE FROM employee WHERE name = 'Ly Pittel' RETURNING * ;

DELETE FROM employee WHERE email = 'charviev@artisteer.com' RETURNING * ;

DELETE FROM employee WHERE birthday = '1977-06-06' RETURNING *;

DELETE FROM employee WHERE name ILIKE '%a' RETURNING *;

