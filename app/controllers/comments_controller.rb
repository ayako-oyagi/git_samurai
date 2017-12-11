class CommentsController < ApplicationController
    def create
        @comment = Comment.create(review: comment_params[:review], nickname: comment_params[:nickname], samurai_id: comment_params[:samurai_id] )
        # binding.pry
        redirect_to "/samurais/#{@comment.samurai.id}#comment_list" 
    end

  private
  def comment_params
    params.permit(:review,:nickname,:samurai_id)
  end
  
  
end
