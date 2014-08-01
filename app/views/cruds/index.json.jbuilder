json.array!(@cruds) do |crud|
  json.extract! crud, :id
  json.url crud_url(crud, format: :json)
end
