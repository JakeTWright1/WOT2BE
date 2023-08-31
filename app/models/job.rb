class Job < ApplicationRecord
  has_many :users, through: :favourites
  belongs_to :user
end
