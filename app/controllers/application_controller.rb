class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def logged_in?
    redirect_to session_new_path, notice: "You must log in to access this page" unless session[:user_id]
  end

  def no_access
    redirect_to grades_path, notice: "You do not have access to this information." unless session[:user_type] == "Teacher"
  end

  def current_user
    session[:user_type].constantize.find(session[:user_id]) #returns the user
  end
end
