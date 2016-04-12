class Request < ActiveRecord::Base

  def self.search(search)
    where("name ILIKE ?", "%#{search}%")
    where("email ILIKE ?", "%#{search}%")
    where("message ILIKE ?", "%#{search}%")
  end

end
