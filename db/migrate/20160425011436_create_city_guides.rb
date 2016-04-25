class CreateCityGuides < ActiveRecord::Migration
  def change
    create_table :city_guides do |t|
      t.string :city
      t.string :state
      t.string :country
      t.text :restaurants
      t.text :see
      t.text :skip
      t.text :stay
      t.text :tips
      t.text :post

      t.timestamps null: false
    end
  end
end
