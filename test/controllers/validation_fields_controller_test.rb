require 'test_helper'

class ValidationFieldsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @validation_field = validation_fields(:one)
  end

  test "should get index" do
    get validation_fields_url
    assert_response :success
  end

  test "should get new" do
    get new_validation_field_url
    assert_response :success
  end

  test "should create validation_field" do
    assert_difference('ValidationField.count') do
      post validation_fields_url, params: { validation_field: { entity_type: @validation_field.entity_type, version_number: @validation_field.version_number } }
    end

    assert_redirected_to validation_field_url(ValidationField.last)
  end

  test "should show validation_field" do
    get validation_field_url(@validation_field)
    assert_response :success
  end

  test "should get edit" do
    get edit_validation_field_url(@validation_field)
    assert_response :success
  end

  test "should update validation_field" do
    patch validation_field_url(@validation_field), params: { validation_field: { entity_type: @validation_field.entity_type, version_number: @validation_field.version_number } }
    assert_redirected_to validation_field_url(@validation_field)
  end

  test "should destroy validation_field" do
    assert_difference('ValidationField.count', -1) do
      delete validation_field_url(@validation_field)
    end

    assert_redirected_to validation_fields_url
  end
end
