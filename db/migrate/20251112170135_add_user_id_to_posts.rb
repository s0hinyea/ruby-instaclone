class AddUserIdToPosts < ActiveRecord::Migration[8.1]
  def change
    add_column :posts, :userId, :string
  end
end
