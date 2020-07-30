class Post < ApplicationRecord
  belongs_to :category
  belongs_to :series
  has_and_belongs_to_many :tags
end
