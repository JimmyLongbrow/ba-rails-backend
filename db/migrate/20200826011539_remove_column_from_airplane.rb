class RemoveColumnFromAirplane < ActiveRecord::Migration[5.2]
  def change
    remove_column :airplanes, :column, :string
  end
end
