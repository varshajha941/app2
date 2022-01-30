class RemoveAccessLevelFromStudents < ActiveRecord::Migration[6.0]
  def change
    remove_column :students, :dept_id, :int
  end
end
