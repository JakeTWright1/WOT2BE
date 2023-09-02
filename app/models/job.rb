class Job < ApplicationRecord
  has_and_belongs_to_many :tags
  has_one_attached :video
  # has_many :users, through: :favourites
  # belongs_to :user
end
