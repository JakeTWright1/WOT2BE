class Job < ApplicationRecord
  has_one_attached :video
  has_many :users, through: :favourites
  belongs_to :user
end
