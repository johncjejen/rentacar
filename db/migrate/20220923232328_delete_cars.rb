class DeleteCars < ActiveRecord::Migration[6.1]
  def change
    remove_column :cars, :photo
  end
end
