class CreateInvoices < ActiveRecord::Migration[5.1]
  def change
    create_table :invoices do |t|
      t.date :payment_date
      t.decimal :charge
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
