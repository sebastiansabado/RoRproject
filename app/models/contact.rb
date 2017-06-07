class Contact < ApplicationRecord
  def self.search(search)
  where("last_name LIKE ? OR phone_number LIKE ? OR first_name LIKE ? OR email LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%") 
  end
end
