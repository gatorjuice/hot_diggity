# frozen_string_literal: true

class CreateStrats < ActiveRecord::Migration[7.0]
  def change
    create_table :strats do |t|
      t.string :name, null: false
      t.integer :stp_form_id, null: false
      t.decimal :min_depth, null: false
      t.decimal :max_depth, null: false
      t.text :soil_description, null: false, default: ''
      t.text :artifact_description, null: false, default: ''
      t.text :comments, null: false, default: ''
      t.string :bag, null: false, default: ''

      t.timestamps
    end
  end
end
