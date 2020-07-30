class Api::V1::PostsController < ApplicationController
  def index
    @posts = Post.all
    render json: @posts, status: 200
  end

  def show
    @post = Post.find(params[:id])
    render json: @post, status: 200
  end

  def create
    @post = Post.create(post_params)
    render json: @post, status: 200
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    render json: @post, status: 200
  end

  def destroy
    @post = Post.find(params[:id])
    @post.delete
    render json: {postId: @post.id}
  end

  private
    def post_params
      params.require(:post).permit(:title, :show_notes, :length, :video, :series_id, :tag_id, :category_id, series_attributes: [:name], tag_attributes: [:name], category_attributes: [:name])
    end
end
