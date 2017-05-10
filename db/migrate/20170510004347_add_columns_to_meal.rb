class AddColumnsToMeal < ActiveRecord::Migration[5.0]
  def change
    add_reference :meals, :venue, foreign_key: true
    add_column :meals, :name, :string
    add_column :meals, :description, :text
  end
end
