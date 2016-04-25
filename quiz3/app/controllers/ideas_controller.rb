class IdeasController < ApplicationController

  before_action :authenticate_user!, except: [:index, :show]

  def new
    @idea = Idea.new
  end

  def create
    @idea = Idea.new(idea_params)
    @idea.user = current_user
    if @idea.save
      flash[:notice] = "Thank you for submitting your idea!"
      redirect_to idea_path(@idea)
    else
      render :new
    end
  end

  def show
    @idea = Idea.find params[:id]
    @like = @idea.like_for(current_user)
  end

  def index
    @ideas = Idea.all
    @like = @idea.like_for(current_user) if @like
  end

  private

  def idea_params
    params.require(:idea).permit([:title, :body])
  end

end
