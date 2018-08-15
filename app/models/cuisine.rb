class Cuisine < ApplicationRecord
  # Direct associations

  has_many   :dishes,
             :dependent => :destroy

  # Indirect associations

  # Validations

  validates :name, :presence => true

end
