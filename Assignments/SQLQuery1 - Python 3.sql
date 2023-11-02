USE Hexaware;

CREATE TABLE user_info_flask (
	Name VARCHAR(200),
	Age INTEGER,
	Gender VARCHAR(200),
	City VARCHAR(200),
	PhoneNumber NVARCHAR(20)
);

select * from emp;

select 
ROW_NUMBER() OVER(ORDER BY t.name) as "Sl.No.",
t.name as Table_Name,
count(c.name) as count_columns
from sys.tables t
inner join sys.all_columns c on t.object_id = c.object_id
group by t.name