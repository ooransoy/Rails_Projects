json.array!(@students) do |student|
  json.extract! student, :id, :name, :surname, :class_name, :age, :gender
  json.url student_url(student, format: :json)
end
