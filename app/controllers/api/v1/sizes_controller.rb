module Api
    module V1
        class SizesController < ApplicationController
            def create
                size = Size.new(size_params)
                if size.save
                    redirect_to admin_path
                else
                    render json: {status: 'ERROR', message:'Size not saved', data:size.errors},status: :unprocessable_entity
                end
            end

            def update
                size = Size.find(params[:id])
                if size.update_attributes(size_params)
                    redirect_to admin_path
                else
                    render json: {status: 'ERROR', message:'size not updated', data:size.errors},status: :unprocessable_entity
                end
            end

            private

            def size_params
                params.require(:size).permit(:value, :product_id, :quantity)
            end
        end
    end
end

