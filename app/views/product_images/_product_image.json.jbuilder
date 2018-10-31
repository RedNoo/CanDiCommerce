json.extract! product_image, :id, :product_id, :data, :file_name, :mime_type, :order_no, :created_at, :updated_at
json.url product_image_url(product_image, format: :json)
