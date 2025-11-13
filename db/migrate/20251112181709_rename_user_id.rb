class RenameUserId < ActiveRecord::Migration[8.1]
  def change
    rename_column :posts, :userId, :user_id
  end
end
