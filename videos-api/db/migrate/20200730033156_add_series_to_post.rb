class AddSeriesToPost < ActiveRecord::Migration[6.0]
  def change
    add_reference :posts, :series, foreign_key: true
  end
end
