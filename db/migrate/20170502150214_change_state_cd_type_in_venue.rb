class ChangeStateCdTypeInVenue < ActiveRecord::Migration[5.0]
  def change
  	change_column :venues, :state_cd, :string
  end
end
