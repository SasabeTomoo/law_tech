class AddDetailsToTransactions < ActiveRecord::Migration[5.2]
  def change
    add_column :transactions, :contacts_date, :date
    add_column :transactions, :returns_date, :date
    add_column :transactions, :make_date, :date
    add_column :transactions, :return_deposit, :integer
  end
end
