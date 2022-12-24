class ChangeBankName < ActiveRecord::Migration[7.0]
  def change
    rename_column :suppliers, :bank, :bank_id
  end
end
