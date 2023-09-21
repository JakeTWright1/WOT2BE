class Subject < ApplicationRecord
  has_many :recommendations
  has_many :jobs, through: :recommendations
end
