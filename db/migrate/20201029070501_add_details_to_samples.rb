class AddDetailsToSamples < ActiveRecord::Migration[5.2]
  def change
    add_column :samples, :reason, :text
    add_column :samples, :yobi, :text
    add_column :samples, :yobiyobi, :text
  end
end
