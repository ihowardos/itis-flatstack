class AddIndexToBlog < ActiveRecord::Migration[5.0]
  def change
    add_index :blogs, :password, unique: true
  end
end
