class Article < ApplicationRecord
	belongs_to :author, required: false
	belongs_to :categorie, required: false
	
	has_many :commentaire
	has_many :like
end
