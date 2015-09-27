class AddViewCount < ActiveRecord::Migration
  def change
    change_table :tweets do |t|
    t.integer  :view_count, default: 0
  end
  end
end
