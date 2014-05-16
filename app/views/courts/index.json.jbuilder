json.array!(@courts) do |court|
  json.extract! court, :id, :facility, :description, :net, :fence, :bench, :number, :rename, :region, :paintoncourt
  json.url court_url(court, format: :json)
end
