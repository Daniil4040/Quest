class CinemasController < ApplicationController
    before_action :set_cinema, only: %i[edit update show destroy] 
    def index
        @cinema = Cinema.all
    end
   
    def new
        @cinema = Cinema.new
    end

    def edit
    end

    def update
        puts params 
        if @cinema.update cinemas_params
            redirect_to cinemas_path
        else
            render :new
        end
    end

    def show
    end

    def destroy
        @cinema.destroy
        redirect_to films_path
    end

    def create
        @cinema = Cinema.new(cinema_params)
        if @cinema.save 
            redirect_to cinema_path
        else
            render :new 
        end
    end

    private

    def set_cinema
        @cinema = Cinema.find_by(id params[:id])
    end

    def cinema_params
        params.require(:cinema).permit(:name, :year)
    end
end