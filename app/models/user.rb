class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :favourites
  has_many :favourite_jobs, through: :favourites, source: :job

  validates :email, presence: true
  validates :username, presence: true
  validates :username, uniqueness: true
  validates :email, uniqueness: true


end
