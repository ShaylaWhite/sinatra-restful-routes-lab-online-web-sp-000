class CreateRecipes < ActiveRecord::Migration
  create_table :recipe do |t|
      t.string :name
      t.string :ingredients
      t.string :cook_time
end
end