# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'StpForms', type: :request do
  describe 'GET /index' do
    it 'returns http success' do
      get '/stp_forms/index'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /create' do
    it 'returns http success' do
      get '/stp_forms/create'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /show' do
    it 'returns http success' do
      get '/stp_forms/show'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /update' do
    it 'returns http success' do
      get '/stp_forms/update'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /destroy' do
    it 'returns http success' do
      get '/stp_forms/destroy'
      expect(response).to have_http_status(:success)
    end
  end
end
