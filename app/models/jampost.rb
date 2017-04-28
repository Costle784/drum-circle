class Jampost < ApplicationRecord
  has_many :comments
  has_many :instruments
  belongs_to :user
end
