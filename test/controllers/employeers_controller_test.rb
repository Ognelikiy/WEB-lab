require "test_helper"

class EmployeersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @employeer = employeers(:one)
  end

  test "should get index" do
    get employeers_url
    assert_response :success
  end

  test "should get new" do
    get new_employeer_url
    assert_response :success
  end

  test "should create employeer" do
    assert_difference("Employeer.count") do
      post employeers_url, params: { employeer: { emp_email: @employeer.emp_email, emp_name: @employeer.emp_name } }
    end

    assert_redirected_to employeer_url(Employeer.last)
  end

  test "should show employeer" do
    get employeer_url(@employeer)
    assert_response :success
  end

  test "should get edit" do
    get edit_employeer_url(@employeer)
    assert_response :success
  end

  test "should update employeer" do
    patch employeer_url(@employeer), params: { employeer: { emp_email: @employeer.emp_email, emp_name: @employeer.emp_name } }
    assert_redirected_to employeer_url(@employeer)
  end

  test "should destroy employeer" do
    assert_difference("Employeer.count", -1) do
      delete employeer_url(@employeer)
    end

    assert_redirected_to employeers_url
  end
end
