class Form < ApplicationRecord
    has_many :questions, dependent: :destroy
    has_many :responses,  dependent: :destroy
end
