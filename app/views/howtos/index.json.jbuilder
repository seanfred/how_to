json.array!(@howtos) do |howto|
  json.extract! howto, 
  json.url howto_url(howto, format: :json)
end
