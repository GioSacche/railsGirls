require 'test_helper'

class ServicosMulheresControllerTest < ActionController::TestCase
  setup do
    @servicos_mulhere = servicos_mulheres(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:servicos_mulheres)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create servicos_mulhere" do
    assert_difference('ServicosMulhere.count') do
      post :create, servicos_mulhere: { Descricao: @servicos_mulhere.Descricao, Nome: @servicos_mulhere.Nome, Status: @servicos_mulhere.Status, Titulo: @servicos_mulhere.Titulo }
    end

    assert_redirected_to servicos_mulhere_path(assigns(:servicos_mulhere))
  end

  test "should show servicos_mulhere" do
    get :show, id: @servicos_mulhere
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @servicos_mulhere
    assert_response :success
  end

  test "should update servicos_mulhere" do
    patch :update, id: @servicos_mulhere, servicos_mulhere: { Descricao: @servicos_mulhere.Descricao, Nome: @servicos_mulhere.Nome, Status: @servicos_mulhere.Status, Titulo: @servicos_mulhere.Titulo }
    assert_redirected_to servicos_mulhere_path(assigns(:servicos_mulhere))
  end

  test "should destroy servicos_mulhere" do
    assert_difference('ServicosMulhere.count', -1) do
      delete :destroy, id: @servicos_mulhere
    end

    assert_redirected_to servicos_mulheres_path
  end
end
