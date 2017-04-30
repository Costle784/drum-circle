class AddTimeToJamposts < ActiveRecord::Migration[5.0]
  def change
    add_column :jamposts, :time, :string 
  end
end
