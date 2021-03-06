class ProductsController < ApplicationController
    def create 
      @product = Product.create(product_params)
      redirect_to products_path 
    end 
    def index
      @products = Product.all 
    end
  
    def show
      @products = Product.find_by(id: params[:id])
  
    end
  
    def new
      @product = Product.new
  
    end
  
    def edit
      @product = Product.find_by(id: params[:id])
  
    end
    def update
      product = Product.find_by(id: params[:id])
      product.update(product_params)
      redirect_to product_path(product)
    end
  
    def destroy
      product = Product.find_by(id: params[:id])
      product.destroy
      redirect_to products_path  
    end
  
    private 
  
    def product_params
      params.require(:product).permit(:name,:description)
    end 
  end
  
