class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception



    protected

    def after_sign_in_path_for(resource)
        if resource_name == :user
            users_index_path(resource)
        end
    end
end
