# == Schema Information
#
# Table name: enrollments
#
#  id         :bigint(8)        not null, primary key
#  course_id  :integer
#  student_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Enrollment < ApplicationRecord
    belongs_to :student,
        class_name: 'User',
        foreign_key: :student_id,
        primary_key: :id 

    belongs_to :course,
        class_name: 'Course',
        foreign_key: :course_id,
        primary_key: :id
end