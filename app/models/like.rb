class Like < ApplicationRecord
	belongs_to :article, required: false
	belongs_to :user, required: false
end
