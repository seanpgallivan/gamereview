class CreateUserGames < ActiveRecord::Migration[6.0]
  def change
    create_table :user_games do |t|
      t.integer :user_id
      t.integer :game_id
      t.integer :rating
      t.string :review
      t.integer :hours_played

      t.timestamps
    end
  end
end
