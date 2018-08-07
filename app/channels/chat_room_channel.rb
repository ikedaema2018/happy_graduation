class ChatRoomChannel < ApplicationCable::Channel
  def subscribed
    stream_from "chat_room_channel"

  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def speak(data)
    chat_message = ChatMessage.create!(content: data['message']["message"], my_id: data['message']["my_id"], your_id: data['message']["your_id"])
    ActionCable.server.broadcast 'chat_room_channel', message: chat_message.content
  end
end
