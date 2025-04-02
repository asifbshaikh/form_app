class Response < ApplicationRecord
  belongs_to :form
  has_many :answer,  dependent: :destroy
end
