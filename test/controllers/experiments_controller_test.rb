require 'test_helper'

class ExperimentsControllerTest < ActionController::TestCase
  setup do
    sign_in users(:one)
    @user = users(:one)
    @experiment = experiments(:one)
    @experiments = Experiment.all
    @material = materials(:one)
    @instruction = instructions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:experiments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create experiment" do
    assert_difference('Experiment.count') do
      post :create, experiment: { name: @experiment.name, complete_time: @experiment.complete_time,
          description: @experiment.description, age: @experiment.age, user_id: @experiment.user_id,
        materials_attributes: {"0" => { experiment_id: @experiment.id, item: @material.item } },
        instructions_attributes: {"0" => { experiment_id: @experiment.id, information: @instruction.information,
            order_number: @instruction.order_number } }
          }
    end

    assert_redirected_to experiment_path(assigns(:experiment))
  end

  test "should show experiment" do
    get :show, id: @experiment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @experiment
    assert_redirected_to edit_experiment_path
  end

  test "should update experiment" do
    patch :update, id: @experiment, experiment: { complete_time: @experiment.complete_time,
        description: @experiment.description, user_id: @experiment.user_id,
        youtube_link: @experiment.youtube_link }
    assert_redirected_to experiment_path(asigns(:experiment))
  end

  test "should destroy experiment" do
    assert_difference('Experiment.count', -1) do
      delete :destroy, id: @experiment
    end

    assert_redirected_to experiments_path
  end
end
