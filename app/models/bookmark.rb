class Bookmark < ApplicationRecord
  # Direct associations

  belongs_to :user,
             :counter_cache => true

  belongs_to :venue,
             :counter_cache => true

  belongs_to :dish

  # Indirect associations

  # Validations

end
