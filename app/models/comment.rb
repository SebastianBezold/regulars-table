class Comment < ActiveRecord::Base
  belongs_to :event
  belongs_to :creator, :class_name => :Employee, :foreign_key => "employee_id"

  validates_presence_of :text
  validates :text, length: { maximum: 500 }
end
