class CinemasController < ApplicationController
    def index
        @cinema = Cinema.all
    end
   
    def new
        @cinema = Cinema.new
    end

    def edit
        @cinema = Cinema.find_by(id: params[:id])
    end

    def update
        puts params 
        @cinema = Cinema.find_by(id: params[:id])
        if @cinema.update cinemas_params
            redirect_to cinemas_path
        else
            render :new
        end
    end

    def show
        @cinema = Cinema.find_by(id: params[:id])
    end

    def destroy
        @cinema = Cinema.find_by(id: params[:id])
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

    def cinema_params
        params.require(:cinema).permit(:name, :year)
    end
end