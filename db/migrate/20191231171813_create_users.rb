class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :password_digest
      t.integer :favorite_game
      t.integer :favorite_genre
      t.integer :favorite_mode

      t.timestamps
    end
  end
end
