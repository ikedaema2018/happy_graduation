class CommunitiesController < ApplicationController
before_action :set_community, only: [:show, :edit, :update]

  def create
    binding.pry
    @community = Community.create(params_community)
    @tags = params[:community_tags]["community_tag_ids"]
    @tags.each do |p|
      @community_tag = CommunityTag.new(community_id: @community.id, community_tag_list_id: p.to_i)
      if !@community_tag.save
      else
        return redirect_to communities_new_path, notice: 'コミュニティの作成に失敗しました'
      end
    end
      redirect_to community_show_path(@community), notice: 'コミュニティの作成に成功しました'
  end

  def index
    @communities = Community.all
  end

  def show
    @community_tags = CommunityTag.where(community_id: @community.id)
  end

  def new
    @community = Community.new
    @community_tag_lists = CommunityTagList.all
  end

  def update
  end

  private
    def set_community
      @community = Community.find(params[:id])
    end

    def params_community
      params.require(:community).permit(:community_name, :community_detail, :user_id)
    end



    # def params_community_tags
    #   params.require(:community_tags).permit(community_tag_ids: [])
    # end

end


