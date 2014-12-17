class Exercise < ActiveRecord::Base
  belongs_to :week
  has_one :next_exercise, class_name: "Exercise", foreign_key: :previous_exercise_id
  belongs_to :previous_exercise, class_name: "Exercise", foreign_key: :previous_exercise_id
end
