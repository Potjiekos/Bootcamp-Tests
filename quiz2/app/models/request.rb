class Request < ActiveRecord::Base

  def self.search(search)

      where("name ILIKE ? OR message ILIKE ? OR email ILIKE ?", "%#{search}%", "%#{search}%", "%#{search}%")
  end

end
