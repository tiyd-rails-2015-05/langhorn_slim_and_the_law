require 'test_helper'

class VenuesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert response.body =~ /number_of_seats/
  end

  test "should be able to create" do
    assert_difference("Venue.count") do
      post :create, {name: "The Yellow Room", city: "Atlantic Beach"}
    end
    assert_equal "The Yellow Room", Venue.last.name
  end

end
