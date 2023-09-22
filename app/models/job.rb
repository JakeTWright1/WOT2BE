class Job < ApplicationRecord
  has_many :recommendations
  has_many :subjects, through: :recommendations
  has_one_attached :video
  belongs_to :user
  has_many :users, through: :favourites
  belongs_to :industry

  validates :title, presence: true
  validates :average_salary, presence: true
  validates :duties, presence: true
  validates :best_bits, presence: true
  validates :worst_bits, presence: true
  validates :qualifications, presence: true

end
