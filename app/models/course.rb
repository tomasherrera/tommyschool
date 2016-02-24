# == Schema Information
#
# Table name: courses
#
#  id              :integer          not null, primary key
#  title           :string
#  description     :text
#  active          :boolean
#  teacher_id      :integer
#  starting_date   :datetime
#  ending_date     :datetime
#  students_number :integer
#  level           :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Course < ActiveRecord::Base
  belongs_to :teacher, class_name: "User",
                        foreign_key: "teacher_id"
  has_many :course_subscriptions
  has_many :students, through: :course_subscriptions, source: "user"
end
