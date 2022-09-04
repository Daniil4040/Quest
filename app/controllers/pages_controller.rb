class PagesController < ApplicationController
    def index
        @name = params[:name]
        @familia = params[:familia]
    end
end