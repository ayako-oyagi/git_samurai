class AnswersController < ApplicationController
 
 def index
   @question = Question.find(params[:question_id])
   @answers = @question.answers
 end
 
 def create
        @answer = Answer.create(create_params)
        redirect_to  "/questions/#{@answer.question.id}/answers" 
    end

  private
  def create_params
    params.permit(:id, :samurai_id)
    params.require(:answer).permit(:samurai_id).merge(question_id: params[:question_id])
  end
  
end
