class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :event_name
      t.integer :event_category_list_id
      t.string :event_detail
      t.integer :event_flag, default: 0
      t.timestamps
    end
  end
end
