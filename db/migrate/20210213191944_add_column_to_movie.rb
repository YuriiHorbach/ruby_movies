class AddColumnToMovie < ActiveRecord::Migration[6.1]
  def change
    add_column :movies, :premiere, :date
  end
end
