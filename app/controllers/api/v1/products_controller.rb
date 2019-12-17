module Api
module V1
  class ProductsController < ApplicationController
    def index
      @products = Product.all
      render json: @products
    end

    def search
      render json: Product.where('name LIKE ?', "%#{params[:search]}%"), status: :ok
    end

    def new
      @product = Product.new
    end

    def show
      render json: Product.find(params[:id])
    end

    def carousel
      render json: Carousel.all
    end

    def trending
      render json: Product.where('trending == 1').limit('8')
    end

    def create
      product = Product.new(product_params)
      if product.save
        if session[:kind] != 1
          render json: { status: 'SUCCESS', message:'product saved successfully', data: product }, status: :created
        else
          redirect_to admin_path
        end
      else
        render json: { status: 'ERROR', message: 'product not created', data: product.errors }, status: :unprocessable_entity
      end
    end

    def destroy
      product = Product.find(params[:id])
      product.destroy
      render json: { status: 'SUCCESS', message: 'product deleted', data: product }, status: :ok
    end

    def update
      product = Product.find(params[:id])
      product.image.purge
      if product.update_attributes(product_params)
        if session[:tipo] != 1
          render json: { status: 'SUCCESS', message:'product saved successfully', data: product }, status: :created
        else
          redirect_to admin_path
        end
      else
        render json: { status: 'ERROR', message: 'product not created', data: product.errors }, status: :unprocessable_entity
      end
    end

    private

    def product_params
      params.require(:product).permit(:name, :brand, :description, :gender,
                                      :colors, :price, :new, :trending, :image)
    end
  end
end
end
