class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    def require_is_admin
        unless current_user && current_user.is_admin?
            flash[:alert] = 'You are not admin'
            redirect_to jobs_path
        end
    end
end
