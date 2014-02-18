class ChangeTypeDob < ActiveRecord::Migration
  def change
  	reversible do |dir|
      change_table :users do |t|
        dir.up   { t.change :dob, :string }
        dir.down { t.change :dob, :date}
  end
end
end end
