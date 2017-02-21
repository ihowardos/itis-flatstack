class ProductsController < ApplicationController
  before_action :authenticate_user!, only: [:edit, :new, :destroy]

  expose_decorated :product
  expose_decorated :products, -> { fetch_products }

  expose :comment, -> { Comment.new }

  def create

      if product.save
        redirect_to product, notice: 'Product was successfully created.'
      else
        render :new
      end
  end

  def update
      if product.update(product_params)
        redirect_to product, notice: 'Product was successfully updated.'
              else
        render :edit
      end
  end

  def destroy
    product.destroy
      redirect_to root_path, notice: 'Product was successfully destroyed.'
  end

  private

    def fetch_products
      products = Product.all
      if user_signed_in? && current_user.manager?
      products = products.where("title LIKE ? and amount > 0", "%#{params[:search]}%") if params[:search]  && params[:search] != ""
      else products = products.where("title LIKE %?%", params[:search]) if params[:search]
      end
      products
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:title, :text, :price, :amount, :purchase_price, :color, :size)
    end
end
