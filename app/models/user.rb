class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :jobs, through: :favourites
  has_many :favourites
  has_many :favourites
  has_many :favourite_jobs, through: :favourites, source: :job
end
