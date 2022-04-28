class Corgi < ApplicationRecord
  belongs_to :user

  has_one :photo
end
