class CreateVacationItineraries < ActiveRecord::Migration[5.0]
  def change
    create_table :vacation_itineraries do |t|
      t.string :location
      t.date :start_date
      t.date :end_date
      t.integer :travel_time
      t.string :name
      t.text :description
      t.boolean :need_vaccins

      t.timestamps
    end
  end
end
