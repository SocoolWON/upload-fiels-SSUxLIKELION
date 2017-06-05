class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :destroy, :update]
    def index
      @posts = Post.all
    end
    
    def new 
      @post = Post.new
    end
    
    def create
      post = Post.new(post_params)
      if post.save
          redirect_to posts_path
      else 
          flash[:alert] = "Failed to save"
          redirect_to :back
      end
    end

    def update
      if @post.update(post_params)
        redirect_to posts_path
      else 
        flash[:alert] = "Failed to save"
        redirect_to :back
      end
    end
    
    def edit
    end

    def show
    end
    
    def destroy
      if @post.destroy
        redirect_to posts_path
      else
        flash[:alert] = "Failed to delete"
      end
    end
    
    private
    def post_params
        params.require(:post).permit(:user_id, :title, :content)
    end
    
    def set_post
        @post = Post.find(params[:id])
    end
end
