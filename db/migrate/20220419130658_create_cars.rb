class CreateCars < ActiveRecord::Migration[6.1]
  def change
    create_table :cars do |t|
      t.string :name_car
      t.string :photo
      t.string :description
      t.string :model
      t.integer :hour_cost
      t.float :review
      t.string :rent_status
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
