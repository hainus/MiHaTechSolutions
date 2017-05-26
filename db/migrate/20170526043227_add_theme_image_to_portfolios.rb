class AddThemeImageToPortfolios < ActiveRecord::Migration[5.0]
  def up
    add_attachment :portfolios, :theme_image
  end

  def down
    remove_attachment :portfolios, :theme_image
  end
end
