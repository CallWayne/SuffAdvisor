class Comment < ActiveRecord::Base
  belongs_to :event
  belongs_to :pub
  belongs_to :discothek
end
