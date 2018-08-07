class ChatRoomsController < ApplicationController
  def show
    @user_id = current_user.id
    @id = params[:id]
    @chat_messages = ChatMessage.where(my_id: @user_id, your_id: @id).or(ChatMessage.where(my_id: @id, your_id: @user_id))
  end
end
