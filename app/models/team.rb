class Team < ActiveRecord::Base
  has_and_belongs_to_many :employees

  validates_uniqueness_of :name
end
