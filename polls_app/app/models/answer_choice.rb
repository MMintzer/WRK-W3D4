class AnswerChoice < ApplicationRecord
  
  belongs_to :question,
    class_name: :Question,
    primary_key: :id,
    foreign_key: :question_id
    
  has_many :responses,
    class_name: :Response, 
    foreign_key: :answer_choice_id,
    primary_key: :id
end  