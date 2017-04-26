class CreateVenues < ActiveRecord::Migration[5.0]
  def change
    create_table :venues do |t|
      t.string :name
      t.string :address
      t.string :city
      t.integer :state_cd
      t.string :zip
      t.string :phone
      t.string :cusine

      t.timestamps
    end
  end
end
