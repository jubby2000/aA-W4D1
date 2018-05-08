class ArtworksController < ApplicationController
  def index
    artworks = Artwork.all
    render json: artworks
  end

  def show
    artwork = Artwork.find(params[:id])
    render json: artwork
  end

  def update
    artwork = Artwork.find(params[:id])
    if artwork.update(artwork_params)
      render json: artwork
    else
      render artwork.errors.full_messages, status: 422
    end
  end

  def create
    artwork = Artwork.new()
  end

  private
  def artwork_params
  end
end
