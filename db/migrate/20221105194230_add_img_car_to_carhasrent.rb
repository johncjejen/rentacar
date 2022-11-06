class AddImgCarToCarhasrent < ActiveRecord::Migration[6.1]
  def change
    add_column :car_has_rents, :img_car, :string, :after => :rent_status
  end
end
