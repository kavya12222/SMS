class AddStudentIdToDetail < ActiveRecord::Migration[5.2]
  def change
    add_column :details, :student_id, :integer
    add_index :details, :student_id
  end
end
