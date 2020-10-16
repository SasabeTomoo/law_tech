class CreateDamages < ActiveRecord::Migration[5.2]
  def change
    create_table :damages do |t|
      t.references :adjustment, foreign_key: true
      t.string :answer
      t.text :reason
      t.integer :cost
      t.integer :cost_amount

      t.timestamps
    end
  end
end
