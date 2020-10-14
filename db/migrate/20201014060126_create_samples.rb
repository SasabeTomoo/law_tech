class CreateSamples < ActiveRecord::Migration[5.2]
  def change
    create_table :samples do |t|
      t.text :category
      t.string :field
      t.text :content

      t.timestamps
    end
  end
end
