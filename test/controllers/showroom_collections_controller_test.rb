require 'test_helper'

class ShowroomCollectionsControllerTest < ActionController::TestCase
  setup do
    @showroom_collection = showroom_collections(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:showroom_collections)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create showroom_collection" do
    assert_difference('ShowroomCollection.count') do
      post :create, showroom_collection: { collection_id_id: @showroom_collection.collection_id_id, showroom_id_id: @showroom_collection.showroom_id_id }
    end

    assert_redirected_to showroom_collection_path(assigns(:showroom_collection))
  end

  test "should show showroom_collection" do
    get :show, id: @showroom_collection
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @showroom_collection
    assert_response :success
  end

  test "should update showroom_collection" do
    patch :update, id: @showroom_collection, showroom_collection: { collection_id_id: @showroom_collection.collection_id_id, showroom_id_id: @showroom_collection.showroom_id_id }
    assert_redirected_to showroom_collection_path(assigns(:showroom_collection))
  end

  test "should destroy showroom_collection" do
    assert_difference('ShowroomCollection.count', -1) do
      delete :destroy, id: @showroom_collection
    end

    assert_redirected_to showroom_collections_path
  end
end
