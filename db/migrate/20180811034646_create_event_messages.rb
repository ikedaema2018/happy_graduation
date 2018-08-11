class CreateEventMessages < ActiveRecord::Migration[5.1]
  def change
    create_table :event_messages do |t|
      t.string :content
      t.integer :event_id
      t.integer :user_id
      
      t.timestamps
    end
  end
end
