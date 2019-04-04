require 'rails_helper'

RSpec.describe ExpensesController, type: :controller do
  before(:all) do
    @expense = create(:expense)
  end

  describe 'GET#index' do
    before { get :index }

    it { expect(response).to have_http_status(:success) }
  end

  describe 'GET#show' do
    before { get :show, params: { id: @expense.id } }

    it { expect(response).to have_http_status(:success) }
    it { expect(JSON.parse(response.body)['amount']).to eq(10.55) }
  end

  describe 'POST#update' do
    before { get :update, params: { id: @expense.id, amount: 11.90 } }

    it { expect(response).to have_http_status(:success) }
    it { expect(JSON.parse(response.body)['amount']).to eq(11.90) }
  end

  describe 'DELETE#destroy' do
    before { delete :destroy, params: { id: @expense.id } }

    it { expect(response).to have_http_status(:success) }
  end
end
