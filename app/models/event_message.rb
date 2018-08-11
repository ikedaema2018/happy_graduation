class EventMessage < ApplicationRecord
  belongs_to :user
  validates :event_id, presence: true, numericality: { only_integer: true }
  validates :user_id, presence: true, numericality: { only_integer: true }
  validates :content, presence: true, length: { maximum: 100 }
end
