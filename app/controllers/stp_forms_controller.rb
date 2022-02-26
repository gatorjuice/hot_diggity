# frozen_string_literal: true

class StpFormsController < ApplicationController
  def index
    render_success(logged_in_user.stp_forms)
  end

  def create; end

  def show
    render_success(StpForm.find(params.require(:id)))
  end

  def update; end

  def destroy
    logged_in_user.stp_forms.find(params.require(:id)).destroy
  end
end
