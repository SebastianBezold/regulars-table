class Comment < ActiveRecord::Base
  belongs_to :event
  belongs_to :creator, :class_name => :Employee, :foreign_key => "employee_id"

  validates_presence_of :value
  validates :value, length: { maximum: 500 }
end
