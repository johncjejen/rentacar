class AddReviewToCarHasRents < ActiveRecord::Migration[6.1]
  def change
    add_column :car_has_rents, :review, :float, :after => :rent_date
  end
end
