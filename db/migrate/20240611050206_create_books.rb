class CreateBooks < ActiveRecord::Migration[7.1]
  def change
    drop_table :books, if_exists: true
    create_table :books do |t|
      t.string :title
      t.integer :page_count
      t.text :genre, default: 'Uncategorized'

      t.timestamps
    end
  end
end
