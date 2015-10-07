require 'test_helper'

class LoginLogoutTest < ActionDispatch::IntegrationTest

  # test "login page works" do
  #   # get '/session/new' # This should become the root when you uncomment the below redirection tests
  #   # # assert_redirected_to session_new_path # Testing that you got to login from a redirect
  #   # # follow_redirect!
  #   # # assert_template "new" # Testing that it rendered the new page
  #   # assert response.body.include?("Password")
  #   # post login_path, session: {email: "gibberish@example.com", password: "(%$%$%#)"}
  #   # assert_redirected_to session_new_path # login page, testing that login failed
  #   # post login_path, session: {email: "mason@example.com", password: "(catsdrool)"} # real info from fixture!
  #   # assert_redirected_to teachers_path # destination page after successful log in
  #   # follow_redirect!
  #   # assert_select "article" # This is testing that there is one or more articles (rows) on the page. If you expect to see one, you can say "article", 1
  #   # assert_select "tr", 2 # how many tables you expect, i.e. one per teacher
  # end
  #
  # test "can create students" do
  #   # post login_path, session: {email: "mason@example.com", password: "(catsdrool)"} # real info from fixture!
  #   # post students_path, student: {name: "StudentName", email: "", password: "()", teacher_id: 1} # hit create action to make a new student
  #   # get students_path
  #   # count number of rows again
  # end
  #
  #   # assert_select "a[href=#{logout_path}]", 1 #checks if there is a logout link on the page
  #
  # test "logged in teacher does not see other students" do
  #   # write this test for tonight's homework!
  # end

end
