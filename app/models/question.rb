class Question < ApplicationRecord
  belongs_to :form
  has_many :options,  dependent: :destroy
  has_many :answer,  dependent: :destroy
end
