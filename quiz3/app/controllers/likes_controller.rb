class LikesController < ApplicationController

  before_action :authenticate_user!

  def create
    like = current_user.likes.new
    idea = Idea.find params[:idea_id]
    like.idea = idea
    if current_user == idea.user
      redirect_to ideas_path, alert: "You cannot like your own idea"
    else
      if like.save
        redirect_to ideas_path, notice: "Idea Liked!"
      else
        redirect_to ideas_path, alert: "Cannot Like"
      end
    end

  end

  def destroy
    like = current_user.likes.find params[:id]
    like.destroy
    redirect_to ideas_path, notice: "Unliked"
  end

  private

  def authorize_create
    redirect_to idea, notice: "Can't like!" unless can? :like, idea
  end

  def authorize_destroy
    redirect_to idea, notice: "Can't remove like!" unless can? :destroy, like
  end

  def idea
    @idea ||= Idea.find params[:idea_id]
  end

  def like
    @like ||= Like.find params[:id]
  end

end
