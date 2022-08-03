class AddStudentIdToAcademic < ActiveRecord::Migration[5.2]
  def change
    add_column :academics, :student_id, :integer
    add_index :academics, :student_id
  end
end
