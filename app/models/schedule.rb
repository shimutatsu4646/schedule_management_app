class Schedule < ApplicationRecord
  validates :title, presence: true
  validates :start, presence: true
  validates :end, presence: true
  validates :memo, length:{maximum: 255}
end
