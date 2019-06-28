class ProductsController < ApplicationController
  def index
    @products = Product.all.order("name")
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.create(product_params)
    if @product.valid?
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def product_params
    params.require(:product).permit(:name, :description, :cost)
  end  
end