class CreateCarHasRents < ActiveRecord::Migration[6.1]
  def change
    create_table :car_has_rents do |t|
      t.references :car, null: false, foreign_key: true
      t.integer :rent_hours
      t.float :rent_cost
      t.references :user, null: false, foreign_key: true
      t.string :rent_status

      t.timestamps
    end
  end
end
