class DropTagsIdFromPost < ActiveRecord::Migration[6.0]
  def change
    remove_reference :posts, :tag, foreign_key: true
  end
end
