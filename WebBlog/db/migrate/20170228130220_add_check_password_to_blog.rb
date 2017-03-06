class AddCheckPasswordToBlog < ActiveRecord::Migration[5.0]
  def change
    add_column :blogs, :check_password, :string
  end
end
