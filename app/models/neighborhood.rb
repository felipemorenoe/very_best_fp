class Neighborhood < ApplicationRecord
  # Direct associations

  has_many   :venues,
             :dependent => :destroy

  # Indirect associations

  # Validations

  validates :name, :presence => true

end
