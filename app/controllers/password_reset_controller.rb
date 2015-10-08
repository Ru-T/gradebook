class PasswordResetController < ApplicationController
  def new
  end

  def create
    u = Teacher.find_by_email(params[:email])
    u ||= Student.find_by_email(params[:email])
    u ||= Parent.find_by_email(params[:email])
    if u
      u.password = (params[:password])
      redirect_to session_new_path, notice: "Your password has been reset. Please log in."
    else
      redirect_to session_new_path, alert: "You cannot reset your password at this time."
    end
  end

  def edit
  end
end
