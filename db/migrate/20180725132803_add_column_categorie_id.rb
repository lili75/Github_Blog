class AddColumnCategorieId < ActiveRecord::Migration[5.2]
	def change
		add_reference :articles, :categorie, foreign_key: true
	end
end
