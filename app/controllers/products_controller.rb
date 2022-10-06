# frozen_string_literal: true

class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show; end

  def new
    @product = Product.new
    render :new
  end

  def create
    @product = Product.new(params.require(:product).permit(:name))
    if @product.save
      flash[:success] = "New product successfully added!"
      redirect_to root_path
    else
      flash.now[:error] = "Product creation failed"
      render :new
    end
  end
  def edit
    @product = Product.find(params[:id])
    render :edit
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(params.require(:product).permit(:name))
      flash[:success] = "Product successfully updated"
      redirect_to root_path
    else
      flash.now[:error] = "Product update failed"
      render :edit
    end
  end

  def destroy; end

  def product_params
    params.permit(:name)
  end
end
