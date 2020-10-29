class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
      t.references :user, foreign_key: true
      t.string :user_name
      t.text :user_adress
      t.string :account
      t.text :rent_adress
      t.string :rent_name
      t.integer :deposit_amount
      t.text :destination
      t.string :deadline

      t.timestamps
    end
  end
end
