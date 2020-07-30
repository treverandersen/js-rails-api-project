class Api::V1::SeriesController < ApplicationController
  def index
    @series = Series.all
    render json: @series, status: 200
  end

  def show
    @series = Series.find(params[:id])
    render json: @series, status: 200
  end

  def create
    @series = Series.create(series_params)
    render json: @series, status: 200
  end

  def update
    @series = Series.find(params[:id])
    @series.update(series_params)
    render json: @series, status: 200
  end

  def destroy
    @series = Series.find(params[:id])
    @series.delete
    render json: {seriesId: @series.id}
  end

  private
    def series_params
      params.require(:series).permit(:name)
    end
end
