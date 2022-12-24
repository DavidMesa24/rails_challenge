require "test_helper"

class SupplierTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should not save supplier without name" do
    supplier = Supplier.new
    assert_not supplier.valid? "Saved the supplier without a name"
  end
  test "should save supplier" do
    supplier = Supplier.new
    supplier.name = "Supplier31"
    supplier.nit = "123456789-0"
    assert_not supplier.valid? "Saved the supplier with a name"
  end
end
