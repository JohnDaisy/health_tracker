json.array!(@performed_exercises) do |performed_exercise|
  json.extract! performed_exercise, :id, :performed_exercise, :burn_amount, :date, :exercise_type_id
  json.url performed_exercise_url(performed_exercise, format: :json)
end
