class SamuraisController < ApplicationController

  def index
       @samurais = Samurai.all
       @questions = Question.all.limit(5)

      # @samurais = Samurai.all.limit(6).order("created_at ASC")
  end

  def new
    @samurai = Samurai.new
  end

def show
  @samurai = Samurai.find(params[:id])
  # @comments = @samurai.comments
end

# def search
#     @samurais = Samurai.where('name LIKE(?)', "%#{params[:keyword]}%").limit(20)
# end

  def destroy
    samurai = Samurai.find(params[:id])
    samurai.destroy
    redirect_to "/"
  end


   def edit
    @samurai = Samurai.find(params[:id])
  end

    def update
    @samurai = Samurai.find(params[:id])
    @samurai.update(update_params)
    redirect_to "/samurais/#{@samurai.id}"
  end


def create
@samurai = Samurai.new(samurai_params)
@samurai.save
# redirect_to "/"
redirect_to controller: :samurais, action: :index
end


private
  def samurai_params
    params.require(:samurai).permit(:name, :year, :text, :portrait)
  end

  def update_params
    params.require(:samurai).permit(:name, :year, :text)

  end


end
