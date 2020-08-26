class RemovePlaneIdFromFlight < ActiveRecord::Migration[5.2]
  def change
    remove_column :flights, :plane_id, :integer
  end
end
