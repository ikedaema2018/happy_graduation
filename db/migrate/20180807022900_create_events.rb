class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :event_name
      t.integer :event_category_id
      t.string :event_category_name
      t.string :event_detail

      t.timestamps
    end
  end
end
