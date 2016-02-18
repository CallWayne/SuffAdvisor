class Discothek < ActiveRecord::Base
  has_many :comments, as: :commentable
  validates :title, presence: true,
            length: { minimum: 5 }
  validates :description, :place, :address, presence: true
  ratyrate_rateable 'score'
  geocoded_by :geo
  after_validation :geocode

  def geo
    [place, address].compact.join(', ')
  end
end

