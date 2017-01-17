class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string :content
      t.string :header

      t.timestamps
    end
  end
end
