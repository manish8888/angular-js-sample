json.array!(@kites) do |kite|
  json.extract! kite, :id
  json.url kite_url(kite, format: :json)
end
