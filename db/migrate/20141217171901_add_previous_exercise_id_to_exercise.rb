class AddPreviousExerciseIdToExercise < ActiveRecord::Migration
  def change
    add_column :exercises, :previous_exercise_id, :integer
  end
end
