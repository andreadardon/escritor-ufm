class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.string :title
      t.text :instructions
      t.references :week, index: true

      t.timestamps
    end
  end
end
