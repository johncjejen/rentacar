class IndexController < ApplicationController
    before_action :configure_permitted_parameters, if: :devise_controller?
    before_action :authenticate_user!, except:[:profile]
    def showindex
        render html: "<h1>Hola, Rails!</h1>".html_safe
    end

    def profile
        
    end

end
