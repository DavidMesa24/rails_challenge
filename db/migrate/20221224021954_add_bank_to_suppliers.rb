class AddBankToSuppliers < ActiveRecord::Migration[7.0]
  def change
    add_column :suppliers, :bank, :string
    add_column :suppliers, :account_number, :string
  end
end
