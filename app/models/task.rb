class Task < ApplicationRecord
  validates :title, presence: true, length: { maximum: 100 }
  validates :done, inclusion: { in: [ true, false ] }

  enum priority: {
    low: 1,
    medium: 2,
    high: 3
  }
end
