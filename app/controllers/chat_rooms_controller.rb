class ChatRoomsController < ApplicationController
  def show
    @my_id = current_user.id
    @your_id = params[:id]
    @chat_messages = ChatMessage.where(my_id: @my_id, your_id: @your_id).or(ChatMessage.where(my_id: @your_id, your_id: @my_id))
  end
end
