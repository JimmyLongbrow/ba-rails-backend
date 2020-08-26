class AddColumnToAirplane < ActiveRecord::Migration[5.2]
  def change
    add_column :airplanes, :column, :integer
  end
end
