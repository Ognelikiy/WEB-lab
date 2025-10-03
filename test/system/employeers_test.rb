require "application_system_test_case"

class EmployeersTest < ApplicationSystemTestCase
  setup do
    @employeer = employeers(:one)
  end

  test "visiting the index" do
    visit employeers_url
    assert_selector "h1", text: "Employeers"
  end

  test "should create employeer" do
    visit employeers_url
    click_on "New employeer"

    fill_in "Emp email", with: @employeer.emp_email
    fill_in "Emp name", with: @employeer.emp_name
    click_on "Create Employeer"

    assert_text "Employeer was successfully created"
    click_on "Back"
  end

  test "should update Employeer" do
    visit employeer_url(@employeer)
    click_on "Edit this employeer", match: :first

    fill_in "Emp email", with: @employeer.emp_email
    fill_in "Emp name", with: @employeer.emp_name
    click_on "Update Employeer"

    assert_text "Employeer was successfully updated"
    click_on "Back"
  end

  test "should destroy Employeer" do
    visit employeer_url(@employeer)
    click_on "Destroy this employeer", match: :first

    assert_text "Employeer was successfully destroyed"
  end
end
