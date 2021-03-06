class SessionController < ApplicationController

  def new

  end

  def create
    u = Teacher.find_by_email(params[:email])
    u ||= Student.find_by_email(params[:email])
    u ||= Parent.find_by_email(params[:email])
    if u && u.authenticate(params[:password])
      session[:user_id] = u.id
      session[:user_type] = u.class.to_s
      if session[:user_type] == "Teacher"
        redirect_to students_path, notice: "You have succesfully logged in!" #send(u.class.to_s.lowercase.pluralize + "_path")
      else
        redirect_to grades_path, notice: "You have succesfully logged in!"
      end
    else
      redirect_to session_new_path, alert: "Login failed: invalid email or password."
    end
  end

  def destroy
    session[:user_id] = nil
    session[:user_type] = nil
    redirect_to session_new_path, notice: "You have logged out."
  end

end
