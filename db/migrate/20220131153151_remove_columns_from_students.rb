class RemoveColumnsFromStudents < ActiveRecord::Migration[6.0]
  def change
    remove_column :students,:dept_id
    remove_column :students,:deptartment_id
    remove_column :students,:department_id

    
  end
end
