#Description

This program allows teachers to login and take the following actions:

* Create additional teachers
* Create students that have a teacher
* Create parents that have a student
* Create grades for any assignment belonging to a student

##Login

Teachers can log in with an email and password. Teachers can log out.

##Database Structure

![alt tag](https://github.com/Ru-T/gradebook/blob/master/app/assets/images/database_structure.png)

##To Do

[ ] Make all pages not accessible unless you are logged in
[ ] Do something more graceful when students or parents try to log in
[X] Do something more graceful when email is incorrect
[ ] Write tests for my session controller actions
[ ] Install Bootstrap and style the login page, header, etc.
[ ] Edit teachers view to loop over teachers and look through students within, similar to restaurant menu. Put into a table with <thead>, <tbody>, <td>, <tr>. Put links outside of close table tag.
[ ]
