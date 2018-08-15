class Dish < ApplicationRecord
  # Direct associations

  belongs_to :cuisine,
             :counter_cache => true

  has_one    :bookmark,
             :dependent => :destroy

  # Indirect associations

  has_one    :venue,
             :through => :bookmark,
             :source => :venue

  # Validations

end
