#Description

This program allows teachers, students and parents to log in and view certain data.

##Details

Teachers have the most access to this program. They can do the following actions after logging in:

* Create additional teachers
* Create students that have a teacher
* Create parents that have a student
* Create grades for any assignment belonging to a student
* Delete or edit any of the above data

Students can log in to view their own grades, but cannot edit them. Parents can log in to see the grades of their students, but cannot edit them.

##Login

All users can log in and can reset their password. The password is stored in an encrypted format in the database.

##Database Structure

![alt tag](https://github.com/Ru-T/gradebook/blob/master/app/assets/images/database_structure.png)

##To Do

[ ] Save new password as password for user.
[ ] Fix tests for controller actions
[ ] Write tests for my session controller actions
[ ] Write integration test, especially for teacher permissions on their own students
