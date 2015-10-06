class SessionController < ApplicationController

  def new
    redirect to teachers_path if session[:current_user]
  end


  def create
    @session = Session.new(session_params)

    if @session.save
      session[:current_user] = true
      redirect_to teachers_path, notice: 'You have successfully logged in.'
    else
      redirect to session_path, notice: 'Your login was unsuccessful.'
    end

  end

  def destroy
    session[:current_user] = false
    redirect to session_path
  end

end
