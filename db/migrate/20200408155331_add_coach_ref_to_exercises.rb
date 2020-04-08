class AddCoachRefToExercises < ActiveRecord::Migration[5.2]
  def change
    add_reference :exercises, :coach, foreign_key: true
  end
end
