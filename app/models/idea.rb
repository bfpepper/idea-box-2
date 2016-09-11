class Idea < ApplicationRecord
  has_and_belongs_to_many :images
  belongs_to :category, optional: true
end
