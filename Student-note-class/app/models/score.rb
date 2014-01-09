class Score < ActiveRecord::Base
  belongs_to :student

  validates :score, :numericality => { :greater_than_or_equal_to => 0, :less_than_or_equal_to => 100 }
  validates_uniqueness_of :exam_number, :scope => :lesson_name, :scope => :student_id
end