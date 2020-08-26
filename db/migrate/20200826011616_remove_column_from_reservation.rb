class RemoveColumnFromReservation < ActiveRecord::Migration[5.2]
  def change
    remove_column :reservations, :column, :string
  end
end
