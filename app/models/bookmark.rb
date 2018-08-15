class Bookmark < ApplicationRecord
  # Direct associations

  belongs_to :user,
             :counter_cache => true

  belongs_to :venue,
             :counter_cache => true

  belongs_to :dish

  # Indirect associations

  # Validations

  validates :dish_id, :uniqueness => { :scope => [:venue_id, :user_id] }

  validates :dish_id, :presence => { :message => "no id present" }

  validates :user_id, :uniqueness => { :scope => [:venue_id, :dish_id] }

  validates :user_id, :presence => true

  validates :venue_id, :uniqueness => { :scope => [:notes, :dish_id, :user_id] }

  validates :venue_id, :presence => true

end
