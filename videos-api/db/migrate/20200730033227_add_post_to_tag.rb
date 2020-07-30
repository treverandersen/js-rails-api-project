class AddPostToTag < ActiveRecord::Migration[6.0]
  def change
    add_reference :tags, :post, foreign_key: true
  end
end
