class EventCategoryListsController < ApplicationController
  before_action :set_event_category_list, only: [:show, :edit, :update, :destroy]

  # GET /event_category_lists
  # GET /event_category_lists.json
  def index
    @event_category_lists = EventCategoryList.all
  end

  # GET /event_category_lists/1
  # GET /event_category_lists/1.json
  def show
  end

  # GET /event_category_lists/new
  def new
    @event_category_list = EventCategoryList.new
  end

  # GET /event_category_lists/1/edit
  def edit
    @event = Event.find(params[:id])
  end

  # POST /event_category_lists
  # POST /event_category_lists.json
  def create
    @event_category_list = EventCategoryList.new(event_category_list_params)

    respond_to do |format|
      if @event_category_list.save
        format.html { redirect_to @event_category_list, notice: 'Event category list was successfully created.' }
        format.json { render :show, status: :created, location: @event_category_list }
      else
        format.html { render :new }
        format.json { render json: @event_category_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /event_category_lists/1
  # PATCH/PUT /event_category_lists/1.json
  def update
    respond_to do |format|
      if @event_category_list.update(event_category_list_params)
        format.html { redirect_to @event_category_list, notice: 'Event category list was successfully updated.' }
        format.json { render :show, status: :ok, location: @event_category_list }
      else
        format.html { render :edit }
        format.json { render json: @event_category_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /event_category_lists/1
  # DELETE /event_category_lists/1.json

  # デリートはしない！！！
  # def destroy
  #   @event_category_list.destroy
  #   respond_to do |format|
  #     format.html { redirect_to event_category_lists_url, notice: 'Event category list was successfully destroyed.' }
  #     format.json { head :no_content }
  #   end
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event_category_list
      @event_category_list = EventCategoryList.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_category_list_params
      params.require(:event_category_list).permit(:event_category_name)
    end
end
