class CreateAirports < ActiveRecord::Migration
  def change
    create_table :airports do |t|
      t.string :air_city
      t.string :air_country
      t.string :air_code
      t.text :air_eat
      t.text :air_tips
      t.text :air_post

      t.timestamps null: false
    end
  end
end
