class Event < ApplicationRecord
  belongs_to :event_category_list
  # belongs_to :event_id_to_name ,class_name: 'EventCategoryList', foreign_key: 'event_category_id' 
  # validates :event_name, presence: true, length: { maximum: 20 }
  # validates :event_category, presence: true, length: { maximum: 1 }
  # validates :event_detail, presence: true, length: { maximum: 100 }
  # validates :event_flag, length: { maximum: 1 }
end
