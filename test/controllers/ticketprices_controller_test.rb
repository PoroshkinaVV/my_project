require 'test_helper'

class TicketpricesControllerTest < ActionController::TestCase
  setup do
    @ticketprice = ticketprices(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ticketprices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ticketprice" do
    assert_difference('Ticketprice.count') do
      post :create, ticketprice: { price: @ticketprice.price, visitor_type: @ticketprice.visitor_type }
    end

    assert_redirected_to ticketprice_path(assigns(:ticketprice))
  end

  test "should show ticketprice" do
    get :show, id: @ticketprice
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ticketprice
    assert_response :success
  end

  test "should update ticketprice" do
    patch :update, id: @ticketprice, ticketprice: { price: @ticketprice.price, visitor_type: @ticketprice.visitor_type }
    assert_redirected_to ticketprice_path(assigns(:ticketprice))
  end

  test "should destroy ticketprice" do
    assert_difference('Ticketprice.count', -1) do
      delete :destroy, id: @ticketprice
    end

    assert_redirected_to ticketprices_path
  end
end
