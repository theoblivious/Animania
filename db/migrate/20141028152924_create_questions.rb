class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :english
      t.string :japanese
      t.integer :anime_id

      t.timestamps
    end
  end
end
