# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

how_many = 50
Time.zone = 'Eastern Time (US & Canada)'
exercise_array = ["Running", "Weight Lifting", "Push Ups", "Yoga"]
exercise_hash = Hash.new()
exercise_hash = {"Running" => 1, "Weight Lifting" => 2, "Push Ups" => 3, "Yoga" => 4}

#Exercise Types
ExerciseType.create!(name: "Cardio")
ExerciseType.create!(name: "Anaerobic")
ExerciseType.create!(name: "Calisthenics")
ExerciseType.create!(name: "Flexibility")

#Steps taken
how_many.times do
  num_steps = (100..1000).to_a.sample
  Step.create!(step_number: num_steps,
    date: Faker::Time.between(Time.now - 1.week, Time.now))
end

#Weight Entry
count = 0
7.times do
  random = (150..170).to_a.sample
  Weight.create!( weight: random, date: Time.now - count.day)
  count += 1
end

#Performed Exercise
how_many.times do
  cal_burn = (100..500).to_a.sample
  exercise = exercise_array.sample
  PerformedExercise.create!( performed_exercise: exercise, burn_amount: cal_burn,
    date: Faker::Time.between(Time.now - 1.week, Time.now),
    exercise_type_id: exercise_hash[exercise])
end

#Intake Amounts
how_many.times do
  cal_intake = (300..800).to_a.sample
  IntakeAmount.create!(intake_amount: cal_intake,
  date: Faker::Time.between(Time.now - 1.week, Time.now))
end
