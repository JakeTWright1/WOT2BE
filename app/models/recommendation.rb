class Recommendation < ApplicationRecord
  belongs_to :job
  belongs_to :subject
end
