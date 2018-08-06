require "open-uri"

class FlatsController < ApplicationController
  before_action :set_flats, only: [:index, :show]

  def index
    # @flats = Flat.all
  end

  def show
    @id = params[:id].to_i
    @flat = @flats.find {|flat|  flat["id"] == @id}
    # @flat = Flat.find(params[:id])
  end

  private

  def set_flats
    url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    @flats = JSON.parse(open(url).read)
  end
end
