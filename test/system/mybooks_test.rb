require "application_system_test_case"

class MybooksTest < ApplicationSystemTestCase
  setup do
    @mybook = mybooks(:one)
  end

  test "visiting the index" do
    visit mybooks_url
    assert_selector "h1", text: "Mybooks"
  end

  test "creating a Mybook" do
    visit mybooks_url
    click_on "New Mybook"

    fill_in "Price", with: @mybook.price
    fill_in "Title", with: @mybook.title
    fill_in "Year", with: @mybook.year
    click_on "Create Mybook"

    assert_text "Mybook was successfully created"
    click_on "Back"
  end

  test "updating a Mybook" do
    visit mybooks_url
    click_on "Edit", match: :first

    fill_in "Price", with: @mybook.price
    fill_in "Title", with: @mybook.title
    fill_in "Year", with: @mybook.year
    click_on "Update Mybook"

    assert_text "Mybook was successfully updated"
    click_on "Back"
  end

  test "destroying a Mybook" do
    visit mybooks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Mybook was successfully destroyed"
  end
end
