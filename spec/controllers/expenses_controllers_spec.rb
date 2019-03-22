require 'rails_helper'

RSpec.describe ExpensesController, type: :controller do
  describe '#index' do
    before { get :index }

    it { expect(response.status).to eq(200) }
  end
end
