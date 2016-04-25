class Idea < ActiveRecord::Base

  belongs_to :user

  has_many :comments, dependent: :destroy
  has_many :users, through: :likes

  has_many :likes, dependent: :destroy
  has_many :liked_users, through: :likes, source: :user

  has_many :joins, dependent: :destroy
  has_many :joined_users, through: :joins, source: :user

  validates :title, presence: true
  validates :body, presence: true, length: {minimum: 10}

  def titleize_title
    self.title = title.titleize
  end

  def user_full_name
    user ? user.full_name : ""
  end

  def like_for(user)
    likes.find_by_user_id(user)
  end

end
