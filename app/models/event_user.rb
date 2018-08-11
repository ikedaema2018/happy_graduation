class EventUser < ApplicationRecord
  belongs_to :user
  
  validates :event_id, presence: true, numericality: { only_integer: true }
  validates :user_id, presence: true, numericality: { only_integer: true }
  validates :schedule_flag, presence: true, numericality: { only_integer: true }
end
