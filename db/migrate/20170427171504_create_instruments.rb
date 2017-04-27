class CreateInstruments < ActiveRecord::Migration[5.0]
  def change
    create_table :instruments do |t|
      t.string :instrument
      t.references :jampost, index: true, foreign_key: true
    end
  end
end
