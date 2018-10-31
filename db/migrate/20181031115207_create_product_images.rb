class CreateProductImages < ActiveRecord::Migration[5.1]
  def change
    create_table :product_images do |t|
      t.references :product, foreign_key: true
      t.binary :data
      t.string :file_name
      t.string :mime_type
      t.integer :order_no

      t.timestamps
    end
  end
end
