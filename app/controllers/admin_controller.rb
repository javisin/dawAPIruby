class AdminController < ActionController::Base

  before_action :authenticate, except: [:login,:checkLogin,:logOut]
  def index
    @users = User.all
    @products = Product.all
    @sizes = Size.all
    render layout: 'application'
  end

  def login
    render layout: 'application'
  end

  def newSize
    render layout: 'application'
  end

  def checkLogin
    user = User.find_by_email(params[:user][:email])
    if user.password == params[:user][:password] && user.kind == 1
      session[:email] = user.email
      session[:tipo] = 1
      redirect_to admin_path
    else
      redirect_to admin_login_path
    end
  end

  def logOut
    reset_session
    redirect_to admin_login_path
  end

  def newUser
    render layout: 'application'
  end

  def newProduct
    render layout: 'application'
  end

  def updateUser
  end

  def updateProduct
  end

  def destroyUser
  end

  def destroyProduct
  end

  def showUser
    @user = User.find(params[:id])
  end

  def showProduct
  end

  def editUser
    @user = User.find(params[:id])
    render layout: 'application'
  end

  def editProduct
    @product = Product.find(params[:id])
    render layout: 'application'
  end

  private

  def authenticate
    if session[:email] == nil
      redirect_to admin_login_path
    else
      @login = true
    end
  end
end
