class IndexController < ApplicationController
    def showindex
        render html: "<h1>Hola, Rails!</h1>".html_safe
    end
end
