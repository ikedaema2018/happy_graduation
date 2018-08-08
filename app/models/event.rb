class Event < ApplicationRecord
  belongs_to :event_category_list
  # belongs_to :event_id_to_name ,class_name: 'EventCategoryList', foreign_key: 'event_category_id' 
end
