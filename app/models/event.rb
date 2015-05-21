class Event < ActiveRecord::Base
  belongs_to :creator, :class_name => :Employee, :foreign_key => "employee_id"

  has_many :comments

  has_many :invitations
  has_many :employees, :through => :invitations

  def creator_name
    result = ''
    if creator
      result = creator.full_name
    end
    return result
  end
end
