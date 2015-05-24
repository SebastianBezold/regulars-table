class Invitation < ActiveRecord::Base
  belongs_to :event
  belongs_to :employee

  enum status: [ :unknown, :accepted, :declined ]
end
