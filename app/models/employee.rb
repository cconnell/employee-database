class Employee < ActiveRecord::Base
  
  def full_name
    full_name = "#{first_name} #{middle_name} #{last_name}"
  end

  def time_updated
    updated_at.striftime("%A, %d %b %Y %l:%M %p")
  end

  def japan_prefix
    japan_prefix = "+81 #{phone_number}"
  end
end