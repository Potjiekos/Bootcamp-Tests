class Request < ActiveRecord::Base

  def self.search(search)
    where("name LIKE ?", "%#{search}%")
    where("email LIKE ?", "%#{search}%")
    where("message LIKE ?", "%#{search}%")
  end

end
