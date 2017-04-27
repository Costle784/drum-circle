class Jampost < ApplicationRecord
  has_many :comments
  has_many :instruments
end
