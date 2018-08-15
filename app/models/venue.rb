class Venue < ApplicationRecord
  # Direct associations

  has_many   :bookmarks,
             :dependent => :destroy

  belongs_to :neighborhood,
             :counter_cache => true

  # Indirect associations

  has_many   :dishes,
             :through => :bookmarks,
             :source => :dish

  # Validations

end
