class CategoriesController < ApplicationController
  def show
    @category = Category.find(params[:id])
    @products = @category.products
    @products = @products.where("price <= ?", params[:max]) if params[:max].present?
    @products = @products.where("price >= ?", params[:min]) if params[:min].present?
  end
end
