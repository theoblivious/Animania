class CreateAnimes < ActiveRecord::Migration
  def change
    create_table :animes do |t|
      t.string :name
      t.timestamps
    end
  end
end
