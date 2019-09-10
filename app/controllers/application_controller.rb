class ApplicationController < ActionController::Base
  # protect_from_forgery with: :exception

    skip_before_action :verify_authenticity_token #

    before_action(:check_for_authentication) #

    def check_for_authentication
        if(current_user == nil)
            redirect_to("/login")
        end
    end

    def current_user
        if session[:current_customer_id] 
            return Customer.find(session[:current_customer_id])
        end
    end

end
