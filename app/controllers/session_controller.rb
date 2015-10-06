class SessionController < ApplicationController

  def new

  end

  def create
    if request.post?
      t = Teacher.find_by_email(params[:email])
      if t.authenticate(params[:password])
        session[:current_user] = true
        redirect_to teachers_path, notice: "You have succesfully logged in!"
      else
        redirect_to session_new_path, notice: "Your login was unsuccessful."
      end
    else
      redirect to teachers_path if session[:current_user]
    end
  end

  def destroy
    session[:current_user] = false
    redirect to session_new_path
  end

end
