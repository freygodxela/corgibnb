class Booking < ApplicationRecord
  belongs_to :corgi
  belongs_to :user
end
