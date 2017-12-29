class QuestionsController < ApplicationController


 def new
   @question = Question.new
   @questions = Question.all
 end
    
 def show
  @question = Question.find(params[:id])
  @samurais = Samurai.all
  @answer = Answer.new
  # @answer.question_id = @question.id
  #  @comments = @samurai.comments
 end
    
  def create
    Question.create(create_params)
    redirect_to :root and return
  end

  private
  def create_params
    params.require(:question).permit(:text)
  end

    
    
end
