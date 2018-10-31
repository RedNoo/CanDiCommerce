json.extract! product, :id, :title, :description, :price, :cost_per_item, :has_shipping, :seo_page_title, :seo_page_description, :order_no, :created_at, :updated_at
json.url product_url(product, format: :json)
