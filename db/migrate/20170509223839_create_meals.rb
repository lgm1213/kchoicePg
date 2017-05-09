class CreateMeals < ActiveRecord::Migration[5.0]
  def change
    create_table :meals do |t|
      t.references :venue, foreign_key: true
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
