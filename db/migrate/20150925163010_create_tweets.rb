class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.string :text
      t.date :post_at

      t.timestamps null: false
    end
  end
end
