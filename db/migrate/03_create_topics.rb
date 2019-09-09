class CreateTopics < ActiveRecord::Migration[5.1]
  def change
    create_table :topics do |t|
      t.string :name
      t.integer :likes
      
      t.timestamps
    end
  end
end