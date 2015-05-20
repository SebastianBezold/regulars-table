json.array!(@comments) do |comment|
  json.extract! comment, :id, :text, :event_id, :employee_id
  json.url comment_url(comment, format: :json)
end
