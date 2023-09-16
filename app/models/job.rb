class Job < ApplicationRecord
  has_many :tags, through: :jobs_tags
  has_one_attached :video
  belongs_to :user
  has_many :users, through: :favourites
  belongs_to :industry
end
