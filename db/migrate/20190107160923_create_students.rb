class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.string :education
      t.belongs_to :cohort, index: true
      
      t.timestamps
    end
  end
end
