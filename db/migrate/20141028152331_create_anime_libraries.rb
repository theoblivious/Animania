class CreateAnimeLibraries < ActiveRecord::Migration
  def change
    create_table :anime_libraries do |t|
      t.integer :user_id
      t.integer :anime_id

      t.timestamps
    end
  end
end
