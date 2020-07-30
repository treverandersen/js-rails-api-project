class Api::V1::TagsController < ApplicationController
  def index
    @tags = Tag.all
    render json: @tags, status: 200
  end

  def show 
    @tag = Tag.find(params[:id])
    render json: @tag, status: 200
  end

  def create
    @tag = Tag.create(tag_params)
    render json: @tag, status: 200
  end

  def update
    @tag = Tag.find(params[:id])
    @tag.update(tag_params)
    render json: @tag, status: 200
  end

  def destroy
    @tag = Tag.find(params[:id])
    @tag.delete
    render json: {tagId: @tag.id}
  end

  private
    def tag_params
      params.require(:tag).permit(:name)
    end
end
