class AddPasswordDigestToDepartment < ActiveRecord::Migration[6.0]
  def change
    add_column :departments, :password_digest, :string
  end
end
