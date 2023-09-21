class Job < ApplicationRecord
  has_many :recommendations
  has_many :subjects, through: :recommendations
  has_one_attached :video
  belongs_to :user
  has_many :users, through: :favourites
  belongs_to :industry
end
