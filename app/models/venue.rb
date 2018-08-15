class Venue < ApplicationRecord
  # Direct associations

  belongs_to :neighborhood,
             :counter_cache => true

  # Indirect associations

  # Validations

end
