class AnswersController < ApplicationController
 
#   before_action :ranking
#   def ranking
#     samurai_ids = Answer.group(:samurai_id).order('samurai_id DESC').count(:samurai_id).keys
#     @ranking = samurai_ids.map { |id| Samurai.find(id) }
#   end
 
 def index
   @question = Question.find(params[:question_id])
   @answers = @question.answers
   samurai_ids = @answers.group(:samurai_id).order('count_samurai_id DESC').count(:samurai_id)
   @ranking = []
   samurai_ids.each {|samurai_id, vote_num|
     @ranking << {samurai_name: Samurai.find(samurai_id).name, vote_num: vote_num} 
   }
   
   
   
#   @samurai = samurai_id.values
#   Answer.where(question_id: 3).where(samurai_id: 4).count
#   @count = @question.answers.group(:samurai_id).order('count_samurai_id DESC').count(:samurai_id).values
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
