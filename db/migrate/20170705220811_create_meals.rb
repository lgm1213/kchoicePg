class CreateMeals < ActiveRecord::Migration[5.0]
  def change
    create_table :meals do |t|
      t.string :name
      t.references :venue, foreign_key: true
      t.string :cuisine
      t.string :calories
      t.string :diet

      t.timestamps
    end
  end
end
