class VenuesController < ApplicationController
  def index
    render json: Venue.display_list
  end

  def biggest_venue
    render json: Venue.order(:number_of_seats).last
  end

  def show
    render json: Venue.find_by_id(params[:id])
  end

  def create
    venue = Venue.new(name: params[:name], city: params[:city],
        state: params[:state], number_of_seats: params[:number_of_seats])
    if venue.save
      render json: venue
    else
      render json: venue.errors
    end
  end
end
