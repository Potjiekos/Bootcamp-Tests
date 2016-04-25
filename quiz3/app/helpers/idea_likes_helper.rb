module IdeaLikesHelper
  extend ActiveSupport::Concern
  
  def user_like
    @user_like ||= @idea.like_for(current_user)
  end

end
