# == Schema Information
#
# Table name: responses
#
#  id               :integer          not null, primary key
#  answer_choice_id :integer          not null
#  user_id          :integer          not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Response < ApplicationRecord
  
  def sibling_responses 
    self.question.responses.where.not("responses.id = ?" , self.id)
  end  
  
  def respondent_already_answered? 
    self.sibling_responses.exists?(user_id: self.user_id)
  end  
  
  
  belongs_to :respondent,
    class_name: :User,
    primary_key: :id,
    foreign_key: :user_id
    
  belongs_to :answer_choice,
    class_name: :AnswerChoice,
    primary_key: :id,
    foreign_key: :answer_choice_id
    
  has_one :question, 
    through: :answer_choice,
    source: :question 
  
end  
