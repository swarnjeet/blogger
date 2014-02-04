class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
t.string :user_id
t.string :review_id
t.text :comment
      t.timestamps
    end
  end
end
