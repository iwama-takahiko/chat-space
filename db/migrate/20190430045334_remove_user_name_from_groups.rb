class RemoveUserNameFromGroups < ActiveRecord::Migration[5.0]
  def change
    remove_column :groups, :user_name, :string
  end
end
