class ApplicationController < ActionController::Base
  include AuthorizationHelper
  protect_from_forgery with: :exception
  helper_method :current_order
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:username])
  end

  # def current_order
  #   if session[:order_id]
  #     Order.find(session[:order_id])
  #   else
  #     Order.new
  #   end
  # end

  def current_order
    if session[:order_id].nil?
      Order.new
    else
      Order.find(session[:order_id])
    end
  end

  # def current_order
  #   if session[:order_id].nil?
  #     Order.find(session[:order_id])
  #   else
  #     Order.new
  #   end
  # end
end
