class AddSingleTableInheritenceExample < ActiveRecord::Migration[7.1]
  def change
    create_table :desserts do |t|
      t.string :type
      t.integer :score
      t.string :name
    end
  end
end
