class Contact < ApplicationRecord
  def self.search(search)
    if Rails.env.production?
      where("last_name ILIKE ? OR phone_number ILIKE ? OR first_name ILIKE ? OR email ILIKE ?", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%")
    else
       where("last_name LIKE ? OR phone_number LIKE ? OR first_name LIKE ? OR email LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%")
    end
  end
end
