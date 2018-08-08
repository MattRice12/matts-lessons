class AddLanguageIdToCategories < ActiveRecord::Migration[5.1]
  def change
    add_column :categories, :language_id, :integer
    add_index :categories, :language_id
  end
end
