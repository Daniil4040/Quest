class QuestionsController < ApplicationController
    before_action :set_question, only: %i[edit update show destroy] 
    def index
        @questions = Question.all
    end

    def new
        @question = Question.new
    end

    def edit
    end

    def update
        if @question.update questions_params
            flash[:success] = "Вопрос обновлён!"
            redirect_to questions_path
        else
            render :new
        end
    end

    def show
        @answer = @question.answers.build
        @answers = Answer.order created_at: :desc 
    end

    def destroy
        @question.destroy
        flash[:success] = "Вопрос удалён!"
        redirect_to questions_path
    end

    def create
        @question = Question.new(questions_params)
        if @question.save 
            flash[:success] = "Вопрос создан!"
            redirect_to questions_path
        else
            render :new 
        end
    end

    private

    def set_question
        @question = Question.find_by(id: params[:id])   
    end

    def questions_params
        params.require(:question).permit(:title, :body)
    end
end