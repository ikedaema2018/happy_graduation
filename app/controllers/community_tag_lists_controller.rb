class CommunityTagListsController < ApplicationController
  before_action :set_community_tag_list, only: [:show, :edit, :update, :destroy]

  # GET /community_tag_lists
  # GET /community_tag_lists.json
  def index
    @community_tag_lists = CommunityTagList.all
  end

  # GET /community_tag_lists/1
  # GET /community_tag_lists/1.json
  def show
  end

  # GET /community_tag_lists/new
  def new
    @community_tag_list = CommunityTagList.new
  end

  # GET /community_tag_lists/1/edit
  def edit
  end

  # POST /community_tag_lists
  # POST /community_tag_lists.json
  def create
    @community_tag_list = CommunityTagList.new(community_tag_list_params)

    respond_to do |format|
      if @community_tag_list.save
        format.html { redirect_to @community_tag_list, notice: 'Community tag list was successfully created.' }
        format.json { render :show, status: :created, location: @community_tag_list }
      else
        format.html { render :new }
        format.json { render json: @community_tag_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /community_tag_lists/1
  # PATCH/PUT /community_tag_lists/1.json
  def update
    respond_to do |format|
      if @community_tag_list.update(community_tag_list_params)
        format.html { redirect_to @community_tag_list, notice: 'Community tag list was successfully updated.' }
        format.json { render :show, status: :ok, location: @community_tag_list }
      else
        format.html { render :edit }
        format.json { render json: @community_tag_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /community_tag_lists/1
  # DELETE /community_tag_lists/1.json
  def destroy
    @community_tag_list.destroy
    respond_to do |format|
      format.html { redirect_to community_tag_lists_url, notice: 'Community tag list was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_community_tag_list
      @community_tag_list = CommunityTagList.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def community_tag_list_params
      params.require(:community_tag_list).permit(:tag_name)
    end
end
