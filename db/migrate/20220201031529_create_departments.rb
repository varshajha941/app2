class CreateDepartments < ActiveRecord::Migration[6.0]
  def change
    create_table :departments do |t|
      t.string:dept
      t.string:mail
      t.timestamps
    end
  end
end
