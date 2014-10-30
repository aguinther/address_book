class City < ActiveRecord::Base
  validates :elevation,
    numericality: {
      greater_than_or_equal_to: 3315,
      if: ->(city) { city.state == 'CO' },
      message: 'is too low, lowest point in CO is 3315 feet.'
    }

  validates :state, length: { is: 2 }
  validates :population, numericality: {greater_than_or_equal_to: 0}


end
