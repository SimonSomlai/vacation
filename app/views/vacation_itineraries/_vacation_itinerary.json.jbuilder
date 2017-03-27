json.extract! vacation_itinerary, :id, :location, :start_date, :end_date, :travel_time, :name, :description, :need_vaccins, :created_at, :updated_at
json.url vacation_itinerary_url(vacation_itinerary, format: :json)
