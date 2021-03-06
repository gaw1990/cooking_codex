class CreateRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table :recipes, primary_key: :recipe_id do |t|
      t.string :title, null: false
      t.text :summary
      t.string :yield
      t.string :prep_time
      t.string :cooking_time
      t.integer :recipe_category_id, index: true
      t.integer :cook_id, index: true
      t.attachment :image

      t.timestamps
    end
  end
end
