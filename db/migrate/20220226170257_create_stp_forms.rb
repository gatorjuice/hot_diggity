# frozen_string_literal: true

class CreateStpForms < ActiveRecord::Migration[7.0]
  def change
    create_table :stp_forms do |t|
      t.integer :excavation_site_id, null: false
      t.string :number, null: false
      t.string :grid_coordinates, null: false, default: ''
      t.decimal :length, null: false, default: 0.0
      t.decimal :width, null: false, default: 0.0

      t.timestamps
    end

    add_index :stp_forms, :number
  end
end
