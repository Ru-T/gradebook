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

[ ] Set root to be an action that just redirects to other views depending on who you are, similar to login create action. (Root should NOT be login page)
[ ] Write tests for my session controller actions
[ ] Write integration test, especially for teacher permissions on their own students

[ ] Create dashboard view for teachers: edit teachers view to loop over teachers and look through students within, similar to restaurant menu. Put into a table with <thead>, <tbody>, <td>, <tr>. Put links outside of close table tag.
[ ] Install Bootstrap and style the login page, header, etc.
[ ] Specify if header should say login or logout based on session value (in a header partial with HTML. ie.if session[:current_user], log out, else login.
