class Corgi < ApplicationRecord
  belongs_to :user
  has_one_attached :photo

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  has_many :bookings

end
