# class ApplicationController < ActionController::Base
#   protect_from_forgery with: :exception

#   include ApplicationHelper#to make sure that the helper created is working on all pages
# end


class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include ApplicationHelper#to make sure that the helper created is working on all pages
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:admin]) #we allow the username for the signup page and account_update page
    devise_parameter_sanitizer.permit(:account_update, keys: [:admin])
  end
end

#to create a new user from the console setting the admin attribute to true
# u = User.new(:email => "user@name.com", :password => 'password', :password_confirmation => 'password', :admin => true)
# u.save  
#u.save commits it to the database