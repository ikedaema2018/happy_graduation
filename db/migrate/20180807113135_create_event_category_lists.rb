class CreateEventCategoryLists < ActiveRecord::Migration[5.1]
  def change
    create_table :event_category_lists do |t|
      t.string :event_category_name

      t.timestamps
    end
  end
end
