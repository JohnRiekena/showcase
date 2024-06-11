class AddRequiredFields < ActiveRecord::Migration[7.1]
  def change
    change_column_null :books, :title, false
  end
end
