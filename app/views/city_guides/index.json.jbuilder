json.array!(@city_guides) do |city_guide|
  json.extract! city_guide, :id, :city, :state, :country, :restaurants, :see, :skip, :stay, :tips, :post
  json.url city_guide_url(city_guide, format: :json)
end
