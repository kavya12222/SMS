class CreateDetail < ActiveRecord::Migration[5.2]
  def change
    create_table :details do |t|
      t.string :Name
      t.string :Dob
      t.string :Blood_group
      t.string :Fathers_name
      t.string :Parent_address
      t.string :Phone_number
      t.string :Achievement
    end
  end
end
