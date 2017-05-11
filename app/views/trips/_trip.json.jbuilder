json.extract! trip, :id, :depart_city, :depart_time, :arrival_city, :arrival_time, :free_seat, :created_at, :updated_at
json.url trip_url(trip, format: :json)
