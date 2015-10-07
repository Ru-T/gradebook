class SessionController < ApplicationController

  def new

  end

  def create
    t = Teacher.find_by_email(params[:email])
    if t && t.authenticate(params[:password])
      session[:teacher_id] = t.id
      redirect_to teachers_path, notice: "You have succesfully logged in!"
    else
      redirect_to session_new_path, alert: "Login failed: invalid email or password."
    end
  end

  def destroy
    session[:teacher_id] = nil
    redirect_to session_new_path, notice: "You have logged out."
  end

end
