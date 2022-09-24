require "application_system_test_case"

class UsersTest < ApplicationSystemTestCase
  setup do
    @user = users(:one)
  end

  test "visiting the index" do
    visit users_url
    assert_selector "h1", text: "Users"
  end

  test "should create user" do
    visit users_url
    click_on "New user"

    fill_in "Date de naissance", with: @user.Date_de_naissance
    fill_in "Description", with: @user.Description
    fill_in "Email", with: @user.Email
    fill_in "Nom", with: @user.Nom
    fill_in "Numéro", with: @user.Numéro
    fill_in "Prénom", with: @user.Prénom
    click_on "Create User"

    assert_text "User was successfully created"
    click_on "Back"
  end

  test "should update User" do
    visit user_url(@user)
    click_on "Edit this user", match: :first

    fill_in "Date de naissance", with: @user.Date_de_naissance
    fill_in "Description", with: @user.Description
    fill_in "Email", with: @user.Email
    fill_in "Nom", with: @user.Nom
    fill_in "Numéro", with: @user.Numéro
    fill_in "Prénom", with: @user.Prénom
    click_on "Update User"

    assert_text "User was successfully updated"
    click_on "Back"
  end

  test "should destroy User" do
    visit user_url(@user)
    click_on "Destroy this user", match: :first

    assert_text "User was successfully destroyed"
  end
end
