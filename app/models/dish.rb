class Dish < ApplicationRecord
  # Direct associations

  belongs_to :cuisine,
             :counter_cache => true

  has_one    :bookmark,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
