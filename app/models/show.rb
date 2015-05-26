class Show < ActiveRecord::Base
  belongs_to :venue

  validates :tour_name, presence: true
end
