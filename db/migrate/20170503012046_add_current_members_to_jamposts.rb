class AddCurrentMembersToJamposts < ActiveRecord::Migration[5.0]
  def change
    add_column :jamposts, :current_members, :integer
  end
end
