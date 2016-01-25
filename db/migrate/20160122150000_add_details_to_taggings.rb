class AddDetailsToTaggings < ActiveRecord::Migration
  def change
    add_column :taggings, :details, :string
  end
end
