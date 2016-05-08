require 'test_helper'

class TicketpriceCollectionsControllerTest < ActionController::TestCase
  setup do
    @ticketprice_collection = ticketprice_collections(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ticketprice_collections)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ticketprice_collection" do
    assert_difference('TicketpriceCollection.count') do
      post :create, ticketprice_collection: { collection_id_id: @ticketprice_collection.collection_id_id, ticketprice_id_id: @ticketprice_collection.ticketprice_id_id }
    end

    assert_redirected_to ticketprice_collection_path(assigns(:ticketprice_collection))
  end

  test "should show ticketprice_collection" do
    get :show, id: @ticketprice_collection
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ticketprice_collection
    assert_response :success
  end

  test "should update ticketprice_collection" do
    patch :update, id: @ticketprice_collection, ticketprice_collection: { collection_id_id: @ticketprice_collection.collection_id_id, ticketprice_id_id: @ticketprice_collection.ticketprice_id_id }
    assert_redirected_to ticketprice_collection_path(assigns(:ticketprice_collection))
  end

  test "should destroy ticketprice_collection" do
    assert_difference('TicketpriceCollection.count', -1) do
      delete :destroy, id: @ticketprice_collection
    end

    assert_redirected_to ticketprice_collections_path
  end
end
