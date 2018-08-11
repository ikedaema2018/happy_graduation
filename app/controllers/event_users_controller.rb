class EventUsersController < ApplicationController

  def create
    @event_user = EventUser.new(event_user_params)
    respond_to do |format|
      if @event_user.save
        format.html { redirect_to "/events/#{@event_user.event_id}", notice: "お客様の操作を受け付けました" }
        format.json { render :show, status: :created, location: @event }
      else
        format.html { redirect_to "/events/#{@event_user.event_id}", notice: "お客様の操作は受け付けられませんでした" }
        format.json { render json: @event_user_errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @event_user = EventUser.find(params[:event_user][:id])
    respond_to do |format|
      if @event_user.update(event_user_params)
        format.html { redirect_to "/events/#{@event_user.event_id}", notice: "お客様の操作を受け付けました" }
        format.json { render :show, status: :created, location: @event }
      else
        format.html { redirect_to "/events/#{@event_user.event_id}", notice: "お客様の操作は受け付けられませんでした" }
        format.json { render json: @event_user_errors, status: :unprocessable_entity }
      end
    end
  end

  private
    def event_user_params
      params.require(:event_user).permit(:event_id, :user_id, :schedule_flag)
    end
    


end
