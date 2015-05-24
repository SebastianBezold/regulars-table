class Employee < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_and_belongs_to_many :teams

  def full_name
    @result = ' '
    if first_name
      @result = first_name
    end
    if last_name
      @result = @result + ' ' + last_name
    end
  end
end
