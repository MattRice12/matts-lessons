class AddViewTagToCategory < ActiveRecord::Migration[5.1]
  def change
    add_column :categories, :view_tag, :string
  end
end
