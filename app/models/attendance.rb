class Attendance < ApplicationRecord
  belongs_to :guest, class_name: "User"
  belongs_to :event, optional: true
  after_create :attendance_send

  def attendance_send
    AttendanceMailer.attendance_email(self).deliver_now
  end
end
