class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :url
      t.string :note
      t.integer :user_id
      t.integer :topic_id
      
      t.timestamps
    end
  end
end
