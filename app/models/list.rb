class List < ApplicationRecord
  has_many :bookmarks
  has_many :movies, through: :bookmarks, dependent: :destroy
  has_many_attached :photo
  validates :name, length: { maximum: 15 }
  validates :name, presence: true
  validates :name, uniqueness: true
end
