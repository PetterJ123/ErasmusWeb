class Article < ApplicationRecord
    def change
        create_tabel :article do |t|
            t.text :content
            t.string :title
        
            t.timestamps
        end
    end
end