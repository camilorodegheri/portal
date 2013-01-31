require 'test_helper'

class AlunoControllerTest < ActionController::TestCase
  setup do
    @aluno = aluno(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:aluno)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create aluno" do
    assert_difference('Aluno.count') do
      post :create, aluno: {  }
    end

    assert_redirected_to aluno_path(assigns(:aluno))
  end

  test "should show aluno" do
    get :show, id: @aluno
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @aluno
    assert_response :success
  end

  test "should update aluno" do
    put :update, id: @aluno, aluno: {  }
    assert_redirected_to aluno_path(assigns(:aluno))
  end

  test "should destroy aluno" do
    assert_difference('Aluno.count', -1) do
      delete :destroy, id: @aluno
    end

    assert_redirected_to aluno_index_path
  end
end
