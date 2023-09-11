class Industry < ApplicationRecord
  has_many :jobs, through: :jobindustry
end
