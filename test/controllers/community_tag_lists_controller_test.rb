require 'test_helper'

class CommunityTagListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @community_tag_list = community_tag_lists(:one)
  end

  test "should get index" do
    get community_tag_lists_url
    assert_response :success
  end

  test "should get new" do
    get new_community_tag_list_url
    assert_response :success
  end

  test "should create community_tag_list" do
    assert_difference('CommunityTagList.count') do
      post community_tag_lists_url, params: { community_tag_list: { tag_name: @community_tag_list.tag_name } }
    end

    assert_redirected_to community_tag_list_url(CommunityTagList.last)
  end

  test "should show community_tag_list" do
    get community_tag_list_url(@community_tag_list)
    assert_response :success
  end

  test "should get edit" do
    get edit_community_tag_list_url(@community_tag_list)
    assert_response :success
  end

  test "should update community_tag_list" do
    patch community_tag_list_url(@community_tag_list), params: { community_tag_list: { tag_name: @community_tag_list.tag_name } }
    assert_redirected_to community_tag_list_url(@community_tag_list)
  end

  test "should destroy community_tag_list" do
    assert_difference('CommunityTagList.count', -1) do
      delete community_tag_list_url(@community_tag_list)
    end

    assert_redirected_to community_tag_lists_url
  end
end
