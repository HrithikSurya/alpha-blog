class Article < ApplicationRecord           # camelcase
  validates :title, presence: true
  validates :description, presence: true
  belongs_to :user
end