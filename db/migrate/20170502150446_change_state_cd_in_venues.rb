class ChangeStateCdInVenues < ActiveRecord::Migration[5.0]
  def change
  	rename_column :venues, :state_cd, :state
  end
end
