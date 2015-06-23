class Customer < User
  has_one :contact_info
  has_one :personal_detail

  has_many :education
  has_many :event
  has_many :experience
end
