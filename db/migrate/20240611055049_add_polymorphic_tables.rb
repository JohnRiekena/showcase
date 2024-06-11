class AddPolymorphicTables < ActiveRecord::Migration[7.1]
  def change
    create_table :musicians do |t|
      t.string :name
      t.timestamps
    end

    create_table :surgeons do |t|
      t.string :name
      t.timestamps
    end

    create_table :instruments do |t|
      t.string :name
      t.references :instrumentable, polymorphic: true
      t.timestamps
    end

    add_index :instruments, [:instrumentable_id, :instrumentable_type]
  end
end
