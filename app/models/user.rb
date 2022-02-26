# frozen_string_literal: true

class User < ApplicationRecord
  has_secure_password

  validates :email, uniqueness: true

  has_many :user_stp_forms, dependent: :destroy
  has_many :stp_forms, through: :user_stp_forms
end
