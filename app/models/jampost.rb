class Jampost < ApplicationRecord
  validates :title, presence: true
  validates :location, presence: true
  validates :body, presence: true
  validates :time, presence: true
  has_many :comments, dependent: :destroy
  has_many :instruments, dependent: :destroy
  belongs_to :user
end
