json.array!(@uploads) do |upload|
  json.extract! upload, :id, :path
  json.url upload_url(upload, format: :json)
end
