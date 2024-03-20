require "test_helper"

class FormEntriesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get form_entries_new_url
    assert_response :success
  end

  test "should get create" do
    get form_entries_create_url
    assert_response :success
  end

  test "should get index" do
    get form_entries_index_url
    assert_response :success
  end
end
