class Job < ApplicationRecord
  has_and_belongs_to_many :tags
  has_one_attached :video
  belongs_to :user
  has_many :users, through: :favourites
  has_many :industries, through: :jobindustry
end
