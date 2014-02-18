class AddColumnCommentsCount < ActiveRecord::Migration
  def change
  	add_column :reviews, :comments_count, :integer, :default => 0, :null => false
  end
end
