class Schedule < ApplicationRecord
  default_scope -> { order(updated_at: :desc) }
  
  validates :title, presence: true
  validates :start, presence: true
  validates :end, presence: true
  validates :memo, length:{maximum: 255}
  
  validate :end_start_check
  validate :start_check, on: :create
    
  def end_start_check
    return if self.start.blank?
      errors.add(:end, "は開始日時より遅い日時を選択してください") if self.start > self.end
  end
  
  def start_check
    return if self.end.blank? || self.start.blank?
      errors.add(:start, "は現在の日時より遅い日時を選択してください") if self.start < Time.now.floor_to(10.minutes)
  end
end
