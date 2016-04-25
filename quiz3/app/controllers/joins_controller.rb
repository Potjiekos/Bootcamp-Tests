class JoinsController < ApplicationController

  def create
    idea = Idea.find params[:idea_id]
    join = Join.new(idea: idea, user: current_user)
    if current_user == idea.user
      render :show, alert: "You cannot join an idea you have created"
    else
      if join.save
        redirect_to ideas_path, notice: "Joined!"
      else
        redirect_to ideas_path, alert: "Unable to Join"
      end
    end
  end

  def destroy
    join = Join.find params[:id]
    join.destroy
    redirect_to ideas_path, notice: "No longer part of idea group!"
  end

  def index
    @join = current_user.joined_ideas
  end

end
