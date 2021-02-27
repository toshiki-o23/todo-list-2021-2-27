class AddPostToPost < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :post, :text
  end
end
