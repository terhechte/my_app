require 'test_helper'

class ItemsControllerTest < ActionController::TestCase
  setup do
    @item = items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create item" do
    assert_difference('Item.count') do
      post :create, item: { category_id: @item.category_id, category_id: @item.category_id, content_html: @item.content_html, content_image: @item.content_image, content_video: @item.content_video, description: @item.description, die_votes: @item.die_votes, fun_votes: @item.fun_votes, keywords: @item.keywords, priority: @item.priority, slider_id: @item.slider_id, thumbnail: @item.thumbnail, title: @item.title, views: @item.views }
    end

    assert_redirected_to item_path(assigns(:item))
  end

  test "should show item" do
    get :show, id: @item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @item
    assert_response :success
  end

  test "should update item" do
    patch :update, id: @item, item: { category_id: @item.category_id, category_id: @item.category_id, content_html: @item.content_html, content_image: @item.content_image, content_video: @item.content_video, description: @item.description, die_votes: @item.die_votes, fun_votes: @item.fun_votes, keywords: @item.keywords, priority: @item.priority, slider_id: @item.slider_id, thumbnail: @item.thumbnail, title: @item.title, views: @item.views }
    assert_redirected_to item_path(assigns(:item))
  end

  test "should destroy item" do
    assert_difference('Item.count', -1) do
      delete :destroy, id: @item
    end

    assert_redirected_to items_path
  end
end
