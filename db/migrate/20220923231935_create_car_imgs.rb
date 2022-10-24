class CreateCarImgs < ActiveRecord::Migration[6.1]
  def change
    create_table :car_imgs do |t|
      t.string :url_img
      t.references :cars, null: false, foreign_key: true
      t.timestamps
    end
  end
end
