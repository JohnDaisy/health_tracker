class PerformedExercise < ActiveRecord::Base
  belongs_to :exercise_type

  def get_type
    type = ExerciseType.find_by_id(self.exercise_type_id)
    type.name
  end

end
