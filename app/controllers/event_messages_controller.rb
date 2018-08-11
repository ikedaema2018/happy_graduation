class EventMessagesController < ApplicationController
  def create
    @event_message = EventMessage.new(event_message_params)
    respond_to do |format|
      if @event_message.save
        format.html { redirect_to "/events/#{@event_message.event_id}", notice: 'メッセージの送信に成功しました' }
        format.json { render :show, status: :created, location: @event_message }
      else
        format.html { redirect_to "/events/#{@event_message.event_id}", notice: 'メッセージの送信に失敗しました' }
        format.json { render json: @event_errors, status: unprocessable_entity }
      end
    end
  end

  def update
    
  end

  private
    def event_message_params
      params.require(:event_message).permit(:content, :user_id, :event_id)
    end

end
