json.array!(@groups) do |group|
  json.extract! group, :id, :tags
  json.url group_url(group, format: :json)
end
