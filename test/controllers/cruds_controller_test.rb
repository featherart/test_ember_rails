require 'test_helper'

class CrudsControllerTest < ActionController::TestCase
  setup do
    @crud = cruds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cruds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create crud" do
    assert_difference('Crud.count') do
      post :create, crud: {  }
    end

    assert_redirected_to crud_path(assigns(:crud))
  end

  test "should show crud" do
    get :show, id: @crud
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @crud
    assert_response :success
  end

  test "should update crud" do
    patch :update, id: @crud, crud: {  }
    assert_redirected_to crud_path(assigns(:crud))
  end

  test "should destroy crud" do
    assert_difference('Crud.count', -1) do
      delete :destroy, id: @crud
    end

    assert_redirected_to cruds_path
  end
end
