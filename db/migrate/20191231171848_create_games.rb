class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.string :title
      t.string :slug
      t.string :summary
      t.string :story
      t.string :released
      t.float :igdb_rating
      t.integer :igdb_rating_count
      t.float :critic_rating
      t.integer :critic_rating_count
      t.string :cover_url
      
      t.timestamps
    end
  end
end
