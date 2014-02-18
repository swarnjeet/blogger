class AddColumnDob < ActiveRecord::Migration
  def change
  	add_column :users, :dob, :integer
  end
end
