class Answer < ApplicationRecord
  belongs_to :response
  belongs_to :question
  has_many :answer_options,  dependent: :destroy
end
