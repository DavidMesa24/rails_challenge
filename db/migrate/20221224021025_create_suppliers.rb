class CreateSuppliers < ActiveRecord::Migration[7.0]
  def change
    create_table :suppliers do |t|
      t.string :name
      t.string :nit
      t.string :contact_name
      t.string :contact_cel

      t.timestamps
    end
  end
end
