class FilmsController < ApplicationController
    def index
        @films = Film.all
    end
    
    def new
        @film = Film.new
    end

    def edit
        @film = Film.find_by(id: params[:id])
    end

    def update
        puts params 
        @film = Film.find_by(id: params[:id])
        if @film.update films_params
            redirect_to films_path
        else
            render :new
        end
    end


    def show
        @film = Film.find_by(id: params[:id])
    end

    def destroy
        @film = Film.find_by(id: params[:id])
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

    def films_params
        params.require(:film).permit(:name, :description)
    end
end