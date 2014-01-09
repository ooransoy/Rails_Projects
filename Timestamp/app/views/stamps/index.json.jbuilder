json.array!(@stamps) do |stamp|
  json.extract! stamp, :id, :date_and_time, :subject, :event, :profile_id
  json.url stamp_url(stamp, format: :json)
end
