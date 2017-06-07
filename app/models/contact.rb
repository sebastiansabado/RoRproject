class Contact < ApplicationRecord
  def self.search(search)
  where("last_name ILIKE ? OR phone_number ILIKE ? OR first_name ILIKE ? OR email ILIKE ?", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%") 
  end
end
