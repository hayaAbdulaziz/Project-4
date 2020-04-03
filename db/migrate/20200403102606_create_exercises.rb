class CreateExercises < ActiveRecord::Migration[5.2]
  def change
    create_table :exercises do |t|
      t.string :name
      t.string :explain
      t.string :img


      t.timestamps
    end
  end
end
