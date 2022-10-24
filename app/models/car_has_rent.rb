class CarHasRent < ApplicationRecord
  belongs_to :car
  belongs_to :user

  def self.getrents
		CarHasRent.select('cars.id,cars.name_car, cars.model,cars.photo,cars.hour_cost, car_has_rents.*')
		.joins('inner join cars on cars.id= car_has_rents.car_id')
	end

end
