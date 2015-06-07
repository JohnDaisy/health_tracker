class CreateIntakeAmounts < ActiveRecord::Migration
  def change
    create_table :intake_amounts do |t|
      t.decimal :intake_amount
      t.datetime :date

      t.timestamps null: false
    end
  end
end
