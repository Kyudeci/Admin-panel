class RenameJoinTableStudentsCohorts < ActiveRecord::Migration[5.2]
  def change
    rename_table :cohorts_and_students, :cohorts_students
  end 
end
