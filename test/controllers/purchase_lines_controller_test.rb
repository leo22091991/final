require 'test_helper'

class PurchaseLinesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @purchase_line = purchase_lines(:one)
  end

  test "should get index" do
    get purchase_lines_url
    assert_response :success
  end

  test "should get new" do
    get new_purchase_line_url
    assert_response :success
  end

  test "should create purchase_line" do
    assert_difference('PurchaseLine.count') do
      post purchase_lines_url, params: { purchase_line: { product_id: @purchase_line.product_id, purchase_id: @purchase_line.purchase_id, subtotal: @purchase_line.subtotal } }
    end

    assert_redirected_to purchase_line_url(PurchaseLine.last)
  end

  test "should show purchase_line" do
    get purchase_line_url(@purchase_line)
    assert_response :success
  end

  test "should get edit" do
    get edit_purchase_line_url(@purchase_line)
    assert_response :success
  end

  test "should update purchase_line" do
    patch purchase_line_url(@purchase_line), params: { purchase_line: { product_id: @purchase_line.product_id, purchase_id: @purchase_line.purchase_id, subtotal: @purchase_line.subtotal } }
    assert_redirected_to purchase_line_url(@purchase_line)
  end

  test "should destroy purchase_line" do
    assert_difference('PurchaseLine.count', -1) do
      delete purchase_line_url(@purchase_line)
    end

    assert_redirected_to purchase_lines_url
  end
end
