class Instrument < ApplicationRecord
  belongs_to :jampost
  belongs_to :user
end
