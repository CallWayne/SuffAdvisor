class Pub < ActiveRecord::Base
  has_many :comments, as: :commentable
  validates :title, presence: true,
            length: { minimum: 5 }
  ratyrate_rateable 'score'
end
