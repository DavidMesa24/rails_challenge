require "test_helper"

class BankTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should not save bank without name" do
    bank = Bank.new
    assert_not bank.save, "Saved the bank without a name"
  end

  test "should save bank with name" do
    bank = Bank.new
    bank.name = "Bank"
    assert bank.save, "Saved the bank without a name"
  end

  test "should not save with duplicate name" do
    bank = Bank.new
    bank.name = "Bank"
    assert bank.save, "Saved the bank without a name"
    bank = Bank.new
    bank.name = "Bank"
    assert_not bank.save, "Saved the bank without a name"
  end

  test "should not update bank without name" do
    bank = Bank.new
    bank.name = "Bank"
    assert bank.save, "Saved the bank without a name"
    bank.name = nil
    assert_not bank.save, "Saved the bank without a name"
  end

  test "should update bank with name" do
    bank = Bank.new
    bank.name = "Bank"
    assert bank.save, "Saved the bank without a name"
    bank.name = "Bank2"
    assert bank.save, "Saved the bank without a name"
  end

  test "should not update with duplicate name" do
    bank = Bank.new
    bank.name = "Bank"
    assert bank.save, "Saved the bank without a name"
    bank2 = Bank.new
    bank2.name = "Bank2"
    assert bank2.save, "Saved the bank without a name"
    bank2.name = "Bank"
    assert_not bank2.save, "Saved the bank without a name"
  end
end
