class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.decimal :price, :precision => 8, :scale => 2
      t.decimal :cost_per_item, :precision => 8, :scale => 2
      t.boolean :has_shipping
      t.string :seo_page_title
      t.text :seo_page_description
      t.integer :order_no

      t.timestamps
    end
  end
end
