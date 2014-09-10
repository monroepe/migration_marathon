class AddIndexToCategoriesAndCategorizations < ActiveRecord::Migration
  def change
    add_index :categories, :name, unique: true
    add_index :categorizations, [:book_id, :category_id], unique: true
  end
end
