json.array!(@data) do |datum|
  json.extract! datum, :title
  json.url datum_url(datum, format: :json)
end
