class CreatePortfolios < ActiveRecord::Migration[5.0]
  def change
    create_table :portfolios do |t|
      t.string :name
      t.integer :category
      t.string :link
      t.string   "image_file_name"
      t.string   "image_content_type"
      t.integer  "image_file_size"
      t.datetime "image_updated_at"
      t.string :notes
      t.timestamps
    end
  end
end

