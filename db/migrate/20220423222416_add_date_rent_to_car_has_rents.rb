class AddDateRentToCarHasRents < ActiveRecord::Migration[6.1]
  def change
    add_column :car_has_rents, :rent_date_to, :date, :after => :rent_date
  end
end
