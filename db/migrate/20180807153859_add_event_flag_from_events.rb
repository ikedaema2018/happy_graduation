class AddEventFlagFromEvents < ActiveRecord::Migration[5.1]
  def change
    add_column :events, :event_flag, :integer
  end
end
