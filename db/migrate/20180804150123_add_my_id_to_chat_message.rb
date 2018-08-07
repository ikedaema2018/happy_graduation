class AddMyIdToChatMessage < ActiveRecord::Migration[5.1]
  def change
    add_column :chat_messages, :my_id, :integer
    add_column :chat_messages, :your_id, :integer
  end
end
