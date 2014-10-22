class ApplicationController < ActionController::Base
  protect_from_forgery

  rescue_from CanCan::AccessDenied do |exception| 
  redirect_to root_path, alert: "You can't access this page" 
  end

  helper_method :current_user
  private
  def current_user
    @current_user ||=User.find(session[:user_id]) if session[:user_id] #|| means if varaible has not been set then it will execute. If nil it will not  
  end

  def require_login
    unless !!current_user
      flash[:alert] = "You can't access this route bitch!"
      redirect_to root_path
    end 
  end

  # def time
  #   time1 = Time.new

  #   puts "Current Time : " + time1.inspect
  # end


end





