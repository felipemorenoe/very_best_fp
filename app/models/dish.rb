class Dish < ApplicationRecord
  # Direct associations

  has_one    :bookmark,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
