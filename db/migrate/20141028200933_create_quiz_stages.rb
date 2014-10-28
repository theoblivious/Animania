class CreateQuizStages < ActiveRecord::Migration
  def change
    create_table :quiz_stages do |t|
      t.integer :quiz_id
      t.integer :questions_id

      t.timestamps
    end
  end
end
