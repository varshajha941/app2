class Remove < ActiveRecord::Migration[6.0]
  def change
    remove_column: students,:dept_id,:int,
    remove_column: students,:deptartment_id,:int
  end
end
