class CreatePlayers < ActiveRecord::Migration[5.1]
  def change
    create_table :players do |t|
      t.string :user_name
      t.string :password_hash
      t.string :email

      t.timestamps
    end
  end
end
