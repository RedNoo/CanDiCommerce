class CreateCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :categories do |t|
      t.string :title
      t.text :description
      t.text :tags
      t.integer :order_id

      t.timestamps
    end
  end
end
