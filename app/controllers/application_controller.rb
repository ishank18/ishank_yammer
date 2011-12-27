class ApplicationController < ActionController::Base
  protect_from_forgery

  #before_filter :authenticate_admin!
	before_filter :authenticate_user!
	
  #def check_authenticity
  #	try(:authenticate_admin!) || try(:authenticate_user!)
  #end
  
end
