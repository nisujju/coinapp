class CategoriesController < ApplicationController
  def show
    if !logged_in?
      store_location
      flash[:warning] = "Sign In/ Signup to access this"
      redirect_to login_path
    end
  	@category=Category.find(params[:id])
  	# @posts=@category.posts.paginate(page: params[:page])
  end

  def index
    # @subcategories = Category.find(params[:id])
  end

  def post
    @category=Category.find(params[:id])
    @posts=@category.posts.paginate(page: params[:page])
  end

  def coins
    @category=Category.find(params[:id])
    @posts=@category.posts.paginate(page: params[:page])
  end
end
