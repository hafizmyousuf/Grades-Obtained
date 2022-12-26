import sqlite3


connection_obj = sqlite3.connect('employee.db')


cursor_obj = connection_obj.cursor()


cursor_obj.execute("DROP TABLE IF EXISTS EMPLOYEE")


table = """ CREATE TABLE employee (
            Employee_id INT(255) NOT NULL,
			Name CHAR(25) NOT NULL,
			Email VARCHAR(255) NOT NULL,
			Mobile INT(25) NOT NULL,
			Job_title CHAR(25) NOT NULL,
            Experience VARCHAR(200) NOT NULL,
			Score INT
		); """

cursor_obj.execute(table)

print("Table is Ready")


connection_obj.close()