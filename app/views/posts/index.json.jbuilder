json.array!(@posts) do |post|
  json.extract! post, :id, :title, :desc, :img, :target, :address, :latitude, :longitude
  json.url post_url(post, format: :json)
end
