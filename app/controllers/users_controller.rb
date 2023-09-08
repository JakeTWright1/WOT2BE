class UsersController < ApplicationController
  has_many :favourites
  has_many :favourite_jobs, through: :favourites, source: :job
end
