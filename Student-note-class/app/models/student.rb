class Student < ActiveRecord::Base
  has_many :scores

  def full_name
  	self.name + " " + self.surname
  end
end