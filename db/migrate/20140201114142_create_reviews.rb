class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
t.string :title
t.string :description
t.string :user_id
 t.timestamps
    end
  end
end
