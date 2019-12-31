class CreateGameModes < ActiveRecord::Migration[6.0]
  def change
    create_table :game_modes do |t|
      t.integer :game_id
      t.integer :mode_id

      t.timestamps
    end
  end
end
