class RemoveCategoryNameFromEvents < ActiveRecord::Migration[5.1]
  def change
    remove_column :events, :category_name, :string
  end
end
