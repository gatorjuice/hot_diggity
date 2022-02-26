# frozen_string_literal: true

class ExcavationSite < ApplicationRecord
  validates :name, :number, presence: true
end
