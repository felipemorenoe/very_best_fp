class Venue < ApplicationRecord
  # Direct associations

  has_many   :bookmarks,
             :dependent => :destroy

  belongs_to :neighborhood,
             :counter_cache => true

  # Indirect associations

  # Validations

end
