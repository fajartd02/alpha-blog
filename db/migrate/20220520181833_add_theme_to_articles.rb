class AddThemeToArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :theme, :string
  end
end
