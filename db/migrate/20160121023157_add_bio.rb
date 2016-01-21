class AddBio < ActiveRecord::Migration
  def change
    add_column :employees, :bio, :text
  end
end
