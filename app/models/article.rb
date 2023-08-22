class Article < ApplicationRecord           # camelcase
    validates :title, presence: true
    validates :description, presence: true
    # resources :article, only: [:show]     #this resource keyword gonna give me all the routes of articles
end