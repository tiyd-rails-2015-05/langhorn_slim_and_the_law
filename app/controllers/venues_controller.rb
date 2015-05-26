class VenuesController < ApplicationController
  def index
    render json: Venue.all.to_json
  end

  def biggest_venue
    render json: Venue.order(:number_of_seats).last.to_json
  end
end
