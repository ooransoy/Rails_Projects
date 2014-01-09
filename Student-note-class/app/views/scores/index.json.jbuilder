json.array!(@scores) do |score|
  json.extract! score, :id, :student_id, :lesson_name, :exam_number, :score
  json.url score_url(score, format: :json)
end
