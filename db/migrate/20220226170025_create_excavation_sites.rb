# frozen_string_literal: true

class CreateExcavationSites < ActiveRecord::Migration[7.0]
  def change
    create_table :excavation_sites do |t|
      t.string :name, null: false
      t.string :number, null: false

      t.timestamps
    end

    add_index :excavation_sites, :number, unique: true
  end
end
