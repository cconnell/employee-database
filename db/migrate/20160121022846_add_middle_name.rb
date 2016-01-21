class AddMiddleName < ActiveRecord::Migration
  def change
    add_column :employees, :middle_name, :string
  end
end
