json.array!(@intake_amounts) do |intake_amount|
  json.extract! intake_amount, :id, :intake_amount, :date
  json.url intake_amount_url(intake_amount, format: :json)
end
