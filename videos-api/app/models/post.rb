class Post < ApplicationRecord
  belongs_to :category
  belongs_to :series

  accepts_nested_attributes_for :category, :series
end
