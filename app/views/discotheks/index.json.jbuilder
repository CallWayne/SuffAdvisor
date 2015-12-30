json.array!(@discotheks) do |discothek|
  json.extract! discothek, :id, :title, :description, :place, :address
  json.url discothek_url(discothek, format: :json)
end
