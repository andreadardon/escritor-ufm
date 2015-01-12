class Answer < ActiveRecord::Base
  belongs_to :exercise
  has_one :review
  belongs_to :user
end
