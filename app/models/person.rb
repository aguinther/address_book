class Person < ActiveRecord::Base
  validates :first_name, :last_name, :email, :address_line_one, :city, :state, :zip_code, presence: true
  validates :email, format: {
    with: /.*@.*/
  }
  validates :zip_code, length: {
    is: 5
  }
  validates :state, length: { is: 2 }
end
