# frozen_string_literal: true

class Strat < ApplicationRecord
  belongs_to :stp_form
  has_many :bags, dependent: :destroy

  validates :name, presence: true
end
