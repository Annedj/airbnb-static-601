require 'open-uri'

class FlatsController < ApplicationController
  before_action :set_flats

  def index
  end

  def show
    flat_id = params[:id].to_i  # 145
    @flat = @flats.find { |flat| flat['id'] == flat_id }
  end

  private

  def set_flats
    url = 'https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json'
    flats_serialized = URI.parse(url).open.read
    @flats = JSON.parse(flats_serialized)
  end
end
