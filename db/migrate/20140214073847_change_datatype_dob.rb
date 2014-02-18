class ChangeDatatypeDob < ActiveRecord::Migration
  def change
  	reversible do |dir|
      change_table :users do |t|
        dir.up   { t.change :dob, :integer }
        dir.down { t.change :description, :string }
  end
end
end
end