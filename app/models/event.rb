class Event < ApplicationRecord
  belongs_to :event_category_list
  belongs_to :user
  validates :event_name, presence: true, length: { maximum: 20 }
  validates :user_id, presence: true, numericality: { only_integer: true } 
  validates :event_category_list_id , presence: true, length: { maximum: 8 }
  validates :event_detail, presence: true, length: { maximum: 100 }
  validates :event_flag, length: { maximum: 8 }
end
