json.array!(@pubs) do |pub|
  json.extract! pub, :id, :title, :description, :place, :address
  json.url pub_url(pub, format: :json)
end
