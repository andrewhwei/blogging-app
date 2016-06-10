class RemoveCategoryFromPost < ActiveRecord::Migration
  def change
    remove_column :posts, :category, :text
  end
end
