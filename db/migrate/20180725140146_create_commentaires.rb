class CreateCommentaires < ActiveRecord::Migration[5.2]
	def change
		create_table :commentaires do |t|
			t.belongs_to :article, index: true #id_de_l'article
			t.belongs_to :user, index: true #id_de_l'auteur

			t.text :content

			t.timestamps
		end
	end
end
