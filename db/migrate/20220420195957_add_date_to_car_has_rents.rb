class AddDateToCarHasRents < ActiveRecord::Migration[6.1]
  def change
    add_column :car_has_rents, :rent_date, :date, :after => :rent_hours
  end
end
