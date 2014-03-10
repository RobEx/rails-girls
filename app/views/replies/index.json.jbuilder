json.array!(@replies) do |reply|
  json.extract! reply, :id, :text
  json.url reply_url(reply, format: :json)
end
