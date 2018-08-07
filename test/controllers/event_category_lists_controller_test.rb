require 'test_helper'

class EventCategoryListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @event_category_list = event_category_lists(:one)
  end

  test "should get index" do
    get event_category_lists_url
    assert_response :success
  end

  test "should get new" do
    get new_event_category_list_url
    assert_response :success
  end

  test "should create event_category_list" do
    assert_difference('EventCategoryList.count') do
      post event_category_lists_url, params: { event_category_list: { event_category_name: @event_category_list.event_category_name } }
    end

    assert_redirected_to event_category_list_url(EventCategoryList.last)
  end

  test "should show event_category_list" do
    get event_category_list_url(@event_category_list)
    assert_response :success
  end

  test "should get edit" do
    get edit_event_category_list_url(@event_category_list)
    assert_response :success
  end

  test "should update event_category_list" do
    patch event_category_list_url(@event_category_list), params: { event_category_list: { event_category_name: @event_category_list.event_category_name } }
    assert_redirected_to event_category_list_url(@event_category_list)
  end

  test "should destroy event_category_list" do
    assert_difference('EventCategoryList.count', -1) do
      delete event_category_list_url(@event_category_list)
    end

    assert_redirected_to event_category_lists_url
  end
end
