class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password

      validates :username, presence: true, uniqueness: true

    end
  end
end
