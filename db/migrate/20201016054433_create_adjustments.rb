class CreateAdjustments < ActiveRecord::Migration[5.2]
  def change
    create_table :adjustments do |t|
      t.references :user, foreign_key: true
      t.string :item
      t.integer :cost
      t.text :category
      t.integer :cost_amount

      t.timestamps
    end
  end
end
