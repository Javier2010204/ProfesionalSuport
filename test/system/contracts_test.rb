require "application_system_test_case"

class ContractsTest < ApplicationSystemTestCase
  setup do
    @contract = contracts(:one)
  end

  test "visiting the index" do
    visit contracts_url
    assert_selector "h1", text: "Contracts"
  end

  test "creating a Contract" do
    visit contracts_url
    click_on "New Contract"

    fill_in "Academy degree", with: @contract.academy_degree
    fill_in "Age", with: @contract.age
    fill_in "Departament", with: @contract.departament
    fill_in "Dpi", with: @contract.dpi
    fill_in "Email", with: @contract.email
    fill_in "Marital status", with: @contract.marital_status
    fill_in "Nacionality", with: @contract.nacionality
    fill_in "Name", with: @contract.name
    fill_in "Phone", with: @contract.phone
    fill_in "Place", with: @contract.place
    fill_in "Profession", with: @contract.profession
    fill_in "University", with: @contract.university
    click_on "Create Contract"

    assert_text "Contract was successfully created"
    click_on "Back"
  end

  test "updating a Contract" do
    visit contracts_url
    click_on "Edit", match: :first

    fill_in "Academy degree", with: @contract.academy_degree
    fill_in "Age", with: @contract.age
    fill_in "Departament", with: @contract.departament
    fill_in "Dpi", with: @contract.dpi
    fill_in "Email", with: @contract.email
    fill_in "Marital status", with: @contract.marital_status
    fill_in "Nacionality", with: @contract.nacionality
    fill_in "Name", with: @contract.name
    fill_in "Phone", with: @contract.phone
    fill_in "Place", with: @contract.place
    fill_in "Profession", with: @contract.profession
    fill_in "University", with: @contract.university
    click_on "Update Contract"

    assert_text "Contract was successfully updated"
    click_on "Back"
  end

  test "destroying a Contract" do
    visit contracts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Contract was successfully destroyed"
  end
end
