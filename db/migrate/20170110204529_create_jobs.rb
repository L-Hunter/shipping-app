class CreateJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :jobs do |t|
      t.string :destination
      t.decimal :cost
      t.string :origin
      t.text :description
      t.integer :containers
      t.integer :user_id

      t.timestamps
    end
  end
end
