require 'test_helper'

class ValidationFieldItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @validation_field_item = validation_field_items(:one)
  end

  test "should get index" do
    get validation_field_items_url
    assert_response :success
  end

  test "should get new" do
    get new_validation_field_item_url
    assert_response :success
  end

  test "should create validation_field_item" do
    assert_difference('ValidationFieldItem.count') do
      post validation_field_items_url, params: { validation_field_item: { is_required: @validation_field_item.is_required, validation_field_id: @validation_field_item.validation_field_id } }
    end

    assert_redirected_to validation_field_item_url(ValidationFieldItem.last)
  end

  test "should show validation_field_item" do
    get validation_field_item_url(@validation_field_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_validation_field_item_url(@validation_field_item)
    assert_response :success
  end

  test "should update validation_field_item" do
    patch validation_field_item_url(@validation_field_item), params: { validation_field_item: { is_required: @validation_field_item.is_required, validation_field_id: @validation_field_item.validation_field_id } }
    assert_redirected_to validation_field_item_url(@validation_field_item)
  end

  test "should destroy validation_field_item" do
    assert_difference('ValidationFieldItem.count', -1) do
      delete validation_field_item_url(@validation_field_item)
    end

    assert_redirected_to validation_field_items_url
  end
end
