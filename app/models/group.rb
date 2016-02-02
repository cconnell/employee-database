class Group < ActiveRecord::Base
  has_many :grouped_contacts
  has_many :employees, through: :grouped_contacts
end
