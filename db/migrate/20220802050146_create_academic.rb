class CreateAcademic < ActiveRecord::Migration[5.2]
  def change
    create_table :academics do |t|
      t.string :Attendance
      t.string :Midterm_marks
      t.string :Midterm_percentage
      t.string :Annual_marks
      t.string :Annual_percentage
      t.string :Fee_details
      t.string :Remark
    end
  end
end
