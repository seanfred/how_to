require 'test_helper'

class HowtosControllerTest < ActionController::TestCase
  setup do
    @howto = howtos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:howtos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create howto" do
    assert_difference('Howto.count') do
      post :create, howto: {  }
    end

    assert_redirected_to howto_path(assigns(:howto))
  end

  test "should show howto" do
    get :show, id: @howto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @howto
    assert_response :success
  end

  test "should update howto" do
    patch :update, id: @howto, howto: {  }
    assert_redirected_to howto_path(assigns(:howto))
  end

  test "should destroy howto" do
    assert_difference('Howto.count', -1) do
      delete :destroy, id: @howto
    end

    assert_redirected_to howtos_path
  end
end
