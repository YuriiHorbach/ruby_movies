class AddDescriptionToMovie < ActiveRecord::Migration[6.1]
  def change
    add_column :movies, :description, :text
  end
end
