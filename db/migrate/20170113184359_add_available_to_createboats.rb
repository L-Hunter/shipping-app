class AddAvailableToCreateboats < ActiveRecord::Migration[5.0]
  def change
    add_column :boats, :available, :boolean
  end
end
