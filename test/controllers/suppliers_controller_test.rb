require "test_helper"

class SuppliersControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers
  # test "the truth" do
  #   assert true
  # end

  test "should get index" do
    sign_in users(:one)
    get suppliers_url(locale: 'en')
    assert_response :success
  end

  test "should get new" do
    sign_in users(:one)
    get new_supplier_url( locale: 'en')
    assert_response :success
  end

  test "should get show" do
    sign_in users(:one)
    get supplier_url(suppliers(:one), locale: 'en')
    assert_response :success
  end

  test "should get edit" do
    sign_in users(:one)
    get edit_supplier_url(suppliers(:one), locale: 'en')
    assert_response :success
  end

  test "should sign in" do
    sign_in users(:one)
    end
end
