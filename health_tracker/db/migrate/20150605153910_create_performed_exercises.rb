class CreatePerformedExercises < ActiveRecord::Migration
  def change
    create_table :performed_exercises do |t|
      t.string :performed_exercise
      t.decimal :burn_amount
      t.datetime :date
      t.integer :exercise_type_id

      t.timestamps null: false
    end
  end
end
