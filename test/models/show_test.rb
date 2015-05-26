require 'test_helper'

class ShowTest < ActiveSupport::TestCase
  test "tour name validation" do
    show = Show.new
    refute show.save
  end
end
