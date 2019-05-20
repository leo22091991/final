require "application_system_test_case"

class PurchaseLinesTest < ApplicationSystemTestCase
  setup do
    @purchase_line = purchase_lines(:one)
  end

  test "visiting the index" do
    visit purchase_lines_url
    assert_selector "h1", text: "Purchase Lines"
  end

  test "creating a Purchase line" do
    visit purchase_lines_url
    click_on "New Purchase Line"

    fill_in "Product", with: @purchase_line.product_id
    fill_in "Purchase", with: @purchase_line.purchase_id
    fill_in "Subtotal", with: @purchase_line.subtotal
    click_on "Create Purchase line"

    assert_text "Purchase line was successfully created"
    click_on "Back"
  end

  test "updating a Purchase line" do
    visit purchase_lines_url
    click_on "Edit", match: :first

    fill_in "Product", with: @purchase_line.product_id
    fill_in "Purchase", with: @purchase_line.purchase_id
    fill_in "Subtotal", with: @purchase_line.subtotal
    click_on "Update Purchase line"

    assert_text "Purchase line was successfully updated"
    click_on "Back"
  end

  test "destroying a Purchase line" do
    visit purchase_lines_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Purchase line was successfully destroyed"
  end
end
