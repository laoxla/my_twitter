class AddColumn < ActiveRecord::Migration
  def change

  change_table :users do |t|
    t.string :password_digest
    t.string :email
    t.string :first_name
    t.string :last_name
    t.string :photo
  end
  end
end
