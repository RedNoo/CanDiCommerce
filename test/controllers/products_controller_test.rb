require 'test_helper'

class ProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product = products(:one)
  end

  test "should get index" do
    get products_url
    assert_response :success
  end

  test "should get new" do
    get new_product_url
    assert_response :success
  end

  test "should create product" do
    assert_difference('Product.count') do
      post products_url, params: { product: { cost_per_item: @product.cost_per_item, description: @product.description, has_shipping: @product.has_shipping, order_no: @product.order_no, price: @product.price, seo_page_description: @product.seo_page_description, seo_page_title: @product.seo_page_title, title: @product.title } }
    end

    assert_redirected_to product_url(Product.last)
  end

  test "should show product" do
    get product_url(@product)
    assert_response :success
  end

  test "should get edit" do
    get edit_product_url(@product)
    assert_response :success
  end

  test "should update product" do
    patch product_url(@product), params: { product: { cost_per_item: @product.cost_per_item, description: @product.description, has_shipping: @product.has_shipping, order_no: @product.order_no, price: @product.price, seo_page_description: @product.seo_page_description, seo_page_title: @product.seo_page_title, title: @product.title } }
    assert_redirected_to product_url(@product)
  end

  test "should destroy product" do
    assert_difference('Product.count', -1) do
      delete product_url(@product)
    end

    assert_redirected_to products_url
  end
end
