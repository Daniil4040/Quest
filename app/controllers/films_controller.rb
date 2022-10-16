class FilmsController < ApplicationController
    before_action :set_film, only: %i[edit update show destroy] 
    def index
        @films = Film.all
    end
    
    def new
        @film = Film.new
    end

    def edit
    end

    def update
        puts params 
        if @film.update films_params
            redirect_to films_path
        else
            render :new
        end
    end


    def show
    end

    def destroy
        @film.destroy
        redirect_to films_path
    end


    def create
        @film = Film.new(films_params)
        if @film.save 
            redirect_to film_path
        else
            render :new 
        end
    end

    private

    def set_film
        @film = Film.find_by(id: params[:id])
    end

    def films_params
        params.require(:film).permit(:name, :description)
    end
end