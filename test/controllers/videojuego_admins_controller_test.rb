require 'test_helper'

class VideojuegoAdminsControllerTest < ActionController::TestCase
  setup do
    @videojuego_admin = videojuego_admins(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:videojuego_admins)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create videojuego_admin" do
    assert_difference('VideojuegoAdmin.count') do
      post :create, videojuego_admin: { admin_id: @videojuego_admin.admin_id, videojuego_id: @videojuego_admin.videojuego_id }
    end

    assert_redirected_to videojuego_admin_path(assigns(:videojuego_admin))
  end

  test "should show videojuego_admin" do
    get :show, id: @videojuego_admin
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @videojuego_admin
    assert_response :success
  end

  test "should update videojuego_admin" do
    patch :update, id: @videojuego_admin, videojuego_admin: { admin_id: @videojuego_admin.admin_id, videojuego_id: @videojuego_admin.videojuego_id }
    assert_redirected_to videojuego_admin_path(assigns(:videojuego_admin))
  end

  test "should destroy videojuego_admin" do
    assert_difference('VideojuegoAdmin.count', -1) do
      delete :destroy, id: @videojuego_admin
    end

    assert_redirected_to videojuego_admins_path
  end
end
