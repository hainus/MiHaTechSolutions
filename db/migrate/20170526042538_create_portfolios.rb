class CreatePortfolios < ActiveRecord::Migration[5.0]
  def change
    create_table :portfolios do |t|
      t.string :code
      t.integer :category
      t.string :link

      t.timestamps
    end
  end
end
