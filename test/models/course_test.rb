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

require 'test_helper'

class CourseTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
