require 'test_helper'

class VideojuegosControllerTest < ActionController::TestCase
  setup do
    @videojuego = videojuegos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:videojuegos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create videojuego" do
    assert_difference('Videojuego.count') do
      post :create, videojuego: { ESRB: @videojuego.ESRB, descripcion: @videojuego.descripcion, developer: @videojuego.developer, nombre: @videojuego.nombre, precio: @videojuego.precio }
    end

    assert_redirected_to videojuego_path(assigns(:videojuego))
  end

  test "should show videojuego" do
    get :show, id: @videojuego
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @videojuego
    assert_response :success
  end

  test "should update videojuego" do
    patch :update, id: @videojuego, videojuego: { ESRB: @videojuego.ESRB, descripcion: @videojuego.descripcion, developer: @videojuego.developer, nombre: @videojuego.nombre, precio: @videojuego.precio }
    assert_redirected_to videojuego_path(assigns(:videojuego))
  end

  test "should destroy videojuego" do
    assert_difference('Videojuego.count', -1) do
      delete :destroy, id: @videojuego
    end

    assert_redirected_to videojuegos_path
  end
end
