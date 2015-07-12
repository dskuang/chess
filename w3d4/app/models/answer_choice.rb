class AnswerChoice < ActiveRecord::Base
  validates :question_id, :body, presence: true

  has_many(
  :responses,
  class_name: :Response,
  foreign_key: :answer_choice_id,
  primary_key: :id

  )

  belongs_to(
  :question,
  class_name: :Question,
  foreign_key: :question_id,
  primary_key: :id,
  dependent: :destroy
  )

end
