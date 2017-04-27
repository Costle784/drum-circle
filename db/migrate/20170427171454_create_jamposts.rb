class CreateJamposts < ActiveRecord::Migration[5.0]
  def change
    create_table :jamposts do |t|
      t.string :title
      t.string :img_url
      t.string :location
      t.string :body
      t.boolean :is_drumcircle
      t.integer :size_limit
      t.integer :skill_level
      t.timestamps
    end
  end
end
