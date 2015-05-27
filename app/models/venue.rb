class Venue < ActiveRecord::Base
  has_many :shows

  validates :city, presence: true

  def limited_hash
    {name: name, number_of_seats: number_of_seats}
  end

  def self.display_list
    all.map &:limited_hash
  end
end
