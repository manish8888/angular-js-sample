require 'test_helper'

class KitesControllerTest < ActionController::TestCase
  setup do
    @kite = kites(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:kites)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create kite" do
    assert_difference('Kite.count') do
      post :create, kite: {  }
    end

    assert_redirected_to kite_path(assigns(:kite))
  end

  test "should show kite" do
    get :show, id: @kite
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @kite
    assert_response :success
  end

  test "should update kite" do
    patch :update, id: @kite, kite: {  }
    assert_redirected_to kite_path(assigns(:kite))
  end

  test "should destroy kite" do
    assert_difference('Kite.count', -1) do
      delete :destroy, id: @kite
    end

    assert_redirected_to kites_path
  end
end
