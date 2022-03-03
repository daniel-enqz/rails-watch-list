class Movie < ApplicationRecord
<<<<<<< HEAD
  has_many :bookmarks
  validates :title, :overview, presence: true
  validates :title, uniqueness: true
=======
>>>>>>> ab2f1d8dc22abce77ddcffa2a8324fdb9ac87702
end
