module Api
module V1
  class UsersController < ApplicationController
    def index
      @users = User.order('created_at DESC')
      render json: @users
    end

    def login
      user = User.find_by_email(params[:email])
      #digestPasword =  Digest::SHA2.hexdigest params[:password]
      password = params[:password]
      if user.password == password
        render json: {status: "SUCCESS", message: "User login", data:user}, status: :ok
      else
        render json: {status: 'ERROR', message:'user not valid'},status: :bad_request
      end
    end

    def new
      @user = User.new
    end

    def show
      render json: User.find(params[:id])
    end

    def create
      user = User.new(user_params)
      user.kind = 2
      if user.save
        if session[:tipo] != 1
          render json: { status: 'SUCCESS', message:'user saved successfully', data: user }, status: :created
        else
          redirect_to admin_path
        end
      else
        render json: { status: 'ERROR', message: 'user not created', data: user.errors }, status: :unprocessable_entity
      end
    end

    def destroy
      user = User.find(params[:id])
      user.destroy
      render json: { status: 'SUCCESS', message: 'User deleted', data: user }, status: :ok
    end

    def update
      user = User.find(params[:id])
      user.kind = 2
      if user.update_attributes(user_params)
        if session[:tipo] != 1
          render json: { status: 'SUCCESS', message:'user saved successfully', data: user }, status: :created
        else
          redirect_to admin_path
        end
      else
        render json: { status: 'ERROR', message: 'user not created', data: user.errors }, status: :unprocessable_entity
      end
    end

    private

    def user_params
      params.permit(:name, :surname, :username, :email, :password, :kind, :country, :postalcode, :phone)
    end
  end
end
end
