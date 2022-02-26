# frozen_string_literal: true

class CreateUserStpForms < ActiveRecord::Migration[7.0]
  def change
    create_table :user_stp_forms do |t|
      t.integer :user_id
      t.integer :stp_form_id

      t.timestamps
    end

    add_index :user_stp_forms, [:user_id, :stp_form_id], unique: true
  end
end
