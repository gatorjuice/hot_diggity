# frozen_string_literal: true

class StpForm < ApplicationRecord
  belongs_to :excavation_site

  has_many :user_stp_forms, dependent: :destroy
  has_many :users, through: :user_stp_forms
  has_many :strats, dependent: :destroy

  validates :number, presence: true
end
