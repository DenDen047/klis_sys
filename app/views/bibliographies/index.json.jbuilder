json.array!(@bibliographies) do |bibliography|
  json.extract! bibliography, :id, :name, :url, :report_id
  json.url bibliography_url(bibliography, format: :json)
end
