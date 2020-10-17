class CreateDatails < ActiveRecord::Migration[5.2]
  def change
    create_table :datails do |t|
      t.references :adjustment, foreign_key: true
      t.text :item
      t.integer :cost
      t.text :category, default: '4.その他', null: false

      t.timestamps
    end
  end
end
