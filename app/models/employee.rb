class Employee < ActiveRecord::Base
  
  has_many :grouped_contacts
  has_many :groups, through: :grouped_contacts
  belongs_to :user
  def full_name
    "#{first_name} #{middle_name} #{last_name}"
  end

  def time_updated
    updated_at.striftime("%A, %d %b %Y %l:%M %p")
  end

  def japan_prefix
    if phone_number.starts_with?("1")
      phone.sub!("1", "+81") 
    end
      phone_number.gsub!(/\D/, "") 
      # phone_number.insert(4, " ")
    "+81 #{phone_number}"
  end


end