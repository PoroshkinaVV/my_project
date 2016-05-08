require 'test_helper'

class ShowpiecesControllerTest < ActionController::TestCase
  setup do
    @showpiece = showpieces(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:showpieces)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create showpiece" do
    assert_difference('Showpiece.count') do
      post :create, showpiece: { collection_id_id: @showpiece.collection_id_id, creation_century: @showpiece.creation_century, description: @showpiece.description, height: @showpiece.height, insurance: @showpiece.insurance, length: @showpiece.length, name: @showpiece.name, people_protection: @showpiece.people_protection, temperature_control: @showpiece.temperature_control, wet_control: @showpiece.wet_control, width: @showpiece.width }
    end

    assert_redirected_to showpiece_path(assigns(:showpiece))
  end

  test "should show showpiece" do
    get :show, id: @showpiece
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @showpiece
    assert_response :success
  end

  test "should update showpiece" do
    patch :update, id: @showpiece, showpiece: { collection_id_id: @showpiece.collection_id_id, creation_century: @showpiece.creation_century, description: @showpiece.description, height: @showpiece.height, insurance: @showpiece.insurance, length: @showpiece.length, name: @showpiece.name, people_protection: @showpiece.people_protection, temperature_control: @showpiece.temperature_control, wet_control: @showpiece.wet_control, width: @showpiece.width }
    assert_redirected_to showpiece_path(assigns(:showpiece))
  end

  test "should destroy showpiece" do
    assert_difference('Showpiece.count', -1) do
      delete :destroy, id: @showpiece
    end

    assert_redirected_to showpieces_path
  end
end
