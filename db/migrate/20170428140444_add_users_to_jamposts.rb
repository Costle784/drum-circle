class AddUsersToJamposts < ActiveRecord::Migration[5.0]
  def change
    add_reference :jamposts, :user, foreign_key: true
  end
end
