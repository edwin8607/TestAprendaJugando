require 'test_helper'

class CentroprogramasControllerTest < ActionController::TestCase
  setup do
    @centroprograma = centroprogramas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:centroprogramas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create centroprograma" do
    assert_difference('Centroprograma.count') do
      post :create, centroprograma: { centro_id: @centroprograma.centro_id, programa_id: @centroprograma.programa_id }
    end

    assert_redirected_to centroprograma_path(assigns(:centroprograma))
  end

  test "should show centroprograma" do
    get :show, id: @centroprograma
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @centroprograma
    assert_response :success
  end

  test "should update centroprograma" do
    patch :update, id: @centroprograma, centroprograma: { centro_id: @centroprograma.centro_id, programa_id: @centroprograma.programa_id }
    assert_redirected_to centroprograma_path(assigns(:centroprograma))
  end

  test "should destroy centroprograma" do
    assert_difference('Centroprograma.count', -1) do
      delete :destroy, id: @centroprograma
    end

    assert_redirected_to centroprogramas_path
  end
end
