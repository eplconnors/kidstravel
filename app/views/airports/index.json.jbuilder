json.array!(@airports) do |airport|
  json.extract! airport, :id, :air_city, :air_country, :air_code, :air_eat, :air_tips, :air_post
  json.url airport_url(airport, format: :json)
end
