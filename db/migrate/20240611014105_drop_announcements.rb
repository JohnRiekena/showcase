class DropAnnouncements < ActiveRecord::Migration[7.1]
  def change
    drop_table :announcements
  end
end
