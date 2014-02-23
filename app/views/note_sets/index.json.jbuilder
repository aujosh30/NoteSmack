json.array!(@note_sets) do |note_set|
  json.extract! note_set, :id, :title, :Description, :SchoolID, :Class, :ClassDate
  json.url note_set_url(note_set, format: :json)
end
