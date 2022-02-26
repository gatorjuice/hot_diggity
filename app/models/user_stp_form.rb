# frozen_string_literal: true

class UserStpForm < ApplicationRecord
  belongs_to :user
  belongs_to :stp_form
end
