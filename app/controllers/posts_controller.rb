class PostsController < ApplicationController
  def index
    @posts= Post.all
  end

  def new
    @post=Post.new
  end

  def create
    @post= Post.create(parametros)

  end

  def show
    @post= Post.find(params[:id])
  end

  def edit
    @post= Post.find(params[:id])
  end

  def update
     @post= Post.update(params[:id],parametros)
     redirect_to posts_path
  end

  def destroy

    @post=Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end




  private
  def parametros

    params.require(:post).permit(:titulo,:texto,:fecha,:estado,:autor_id)
  end
end
