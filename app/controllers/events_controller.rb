class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy, :fix, :fixed]

  def show
    
  end

  def index
    @events = Event.all
  end

  def new
    @event = Event.new
    @event_category_lists = EventCategoryList.all
  end

  def create
    @event = Event.new(event_params)
    respond_to do |format|
      if @event.save
        format.html { redirect_to "/events/#{@event.id}", notice: 'イベントの作成に成功しました' }
        format.json { render :show, status: :created, location: @event }
      else
        format.html { render :new }
        format.json { render json: @event_errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
    @event_category_lists = EventCategoryList.all
  end

  def update
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to @event, notice: 'イベントのアップデートに成功しました' }
        format.json { render :show, status: :ok, location: @event }
      else
        format.html { render :edit }
        format.json { render json: @event, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    
  end

  def fix
    @event = Event.find(params[:id])
    # binding.pry
  end

  def fixed
    # puts(event_fix_params)
    # puts "test"
    binding.pry

    respond_to do |format|
      if @event.update(event_fix_params)
        format.html { redirect_to @event, notice: 'イベントのフラグを変更しました' }
        format.json { render :show, status: :ok, location: @event }
      else
        format.html { render :fix,notice:'失敗した' }
        format.json { render json: @event, status: :unprocessable_entity }
      end
    end
  end

private 

  def set_event
    @event = Event.find(params[:id])
  end


  def event_params
    params.require(:event).permit(:event_name, :event_category_list_id, :event_detail)
  end

  def event_fix_params
    params.require(:event).permit(:event_flag)
  end

end
