class Pub < ActiveRecord::Base
  has_many :comments, as: :commentable
  validates :title, presence: true,
            length: { minimum: 5 }
  ratyrate_rateable 'score'
  geocoded_by :geo
  after_validation :geocode

  def geo
    [place, address].compact.join(', ')
  end
  resourcify
end
