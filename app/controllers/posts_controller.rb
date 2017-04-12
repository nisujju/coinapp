class PostsController < ApplicationController

  before_action :logged_in_user, only: [:create, :destroy, :edit]
  before_action :correct_user,   only: [:destroy, :create, :edit]
  before_action :find_post,   only: :destroy

  def new
  	@post = Post.new
  end

  def edit
  	find_post
  end

  def show
  	find_post
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      flash[:success] = "Post created!"
      # redirect_to category_path(@post.category_id)
        redirect_to coins_path(id: @post.category_id)
      Newcoin.coinadded(@post).deliver_later
    else
      render 'new'
    end
  end

  def destroy
  	debugger
    find_post
  	@post.destroy
    flash[:success] = "Post deleted"
    redirect_to request.referrer || root_url
  end

  def update
    @post = Post.find(params[:id])
    if @post.update_attributes(post_params)
      flash[:success] = "Post updated"
      redirect_to @post
    else
      render 'edit'
    end
  end


  private

    def post_params
      params.require(:post).permit(:category_id, :denomination, :date, :metal, :details, :mint, pictures: [])
    end

    def correct_user
      if !current_user.admin?
      	 flash[:success] = "You are not authorized"
         redirect_to root_url
      end
    end

    def find_post
      @post=Post.find_by(id: params[:id])
    end
end
