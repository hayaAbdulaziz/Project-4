class CreateCoachesAndExercises < ActiveRecord::Migration[5.2]
  def change
    create_table :coaches_and_exercises do |t|
      t.references :coache, foreign_key: true
      t.references :exercise, foreign_key: true
    end
  end
end
