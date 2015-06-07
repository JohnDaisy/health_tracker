class CreateSteps < ActiveRecord::Migration
  def change
    create_table :steps do |t|
      t.decimal :step_number
      t.datetime :date

      t.timestamps null: false
    end
  end
end
