class AnswersController < ApplicationController
    before_action :set_question
    def create
        puts answer_params
        @answer = @question.answers.build(answer_params)
        if @answer.save
            flash[:success] = "Ответ создан!"
            redirect_to question_path(@question)
        else
            @answers = Answer.order created_at: :desc
        end 
    end
    private

    def set_question
        @question = Question.find_by(id: params[:question_id])   
    end

    def answer_params
        params.require(:answer).permit(:body)
    end
end