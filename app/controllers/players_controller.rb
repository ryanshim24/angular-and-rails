class PlayersController < ApplicationController
  # controller supports json only, it can't render pages
  respond_to :json

  def index
    # For a given controller action,
    # respond_with generates an appropriate
    # response based on the mime-type requested
    # by the client.
    respond_with Player.all

  end

  def show
    respond_with Player.find(params[:id])
  end

  def create
    respond_with Player.create(params[:player])
  end

  def update
    respond_with Player.update(params[:id], params[:player])
  end

  def destroy
    respond_with Player.destroy(params[:id])
  end
end