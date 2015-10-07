class SessionController < ApplicationController

  def new

  end

  def create
    if request.post?
      t = Teacher.find_by_email(params[:email])
      if t && t.authenticate(params[:password])
        session[:current_user] = true
        redirect_to teachers_path, notice: "You have succesfully logged in!"
      else
        redirect_to session_new_path, notice: "Login failed: invalid email or password."
      end
    else
      redirect_to teachers_path if session[:current_user]
    end
  end

  def destroy
    session[:current_user] = false
    redirect_to session_new_path, notice: "You have logged out."
  end
  #
  # private def set_params
  #   params.require(:session).permit(:name, :email, :password)
  # end

end

#do you need strong params?
#if t - sends to else and redirects
