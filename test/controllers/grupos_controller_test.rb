require 'test_helper'

class GruposControllerTest < ActionController::TestCase
  setup do
    @grupo = grupos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:grupos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create grupo" do
    assert_difference('Grupo.count') do
      post :create, grupo: { Grupo_id: @grupo.Grupo_id, Grupo_lider: @grupo.Grupo_lider }
    end

    assert_redirected_to grupo_path(assigns(:grupo))
  end

  test "should show grupo" do
    get :show, id: @grupo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @grupo
    assert_response :success
  end

  test "should update grupo" do
    patch :update, id: @grupo, grupo: { Grupo_id: @grupo.Grupo_id, Grupo_lider: @grupo.Grupo_lider }
    assert_redirected_to grupo_path(assigns(:grupo))
  end

  test "should destroy grupo" do
    assert_difference('Grupo.count', -1) do
      delete :destroy, id: @grupo
    end

    assert_redirected_to grupos_path
  end
end
