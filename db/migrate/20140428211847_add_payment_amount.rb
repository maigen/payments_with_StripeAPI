class AddPaymentAmount < ActiveRecord::Migration
  def change
    add_column :payments, :amount, :decimal
  end
end
