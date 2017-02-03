class Article < ActiveRecord::Base
  #rails give us getter / setters
  validates :title, presence: true, length: {minimum: 3, maximum 50}
  validates :description, prsence: true, length: {minnimum: 10, maximum 300 }


end
