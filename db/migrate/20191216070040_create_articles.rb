class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    
    create_table :articles do |t|
      t.string :title
      t.text :description
      
    end
    add_column :articles, :user_id, :integer
  end
end
