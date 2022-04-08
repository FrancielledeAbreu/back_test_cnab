require 'rails_helper'

RSpec.describe CnabsController, type: :controller do

  describe "#index cnabs" do
    let!(:cnab_file_list) {create_list(:cnab, 8)}

    it 'renders all cnabs' do
      get :index
      expect(response).to have_http_status(:success)
    end

    it 'must have 8 cnabs created' do
      cnabs = Cnab.all.count
      expect(cnabs).to eq(8)
    end
  end

  describe "#create cnabs" do
    let(:cnab_file) do
      path = File.join(Rails.root, 'spec', 'cnabs_fake.txt')
      Rack::Test::UploadedFile.new(path, 'text/plain')
    end

    let(:params){ {cnabFile: cnab_file} }

    it "http success" do
      post :create, params: params
      expect(response).to have_http_status(:success)
      body = JSON.parse(response.body)

      expect(body['message']).to eq('Cnab salvo com sucesso')
    end

    it 'creates three cnabs when the txt have three lines' do
      expect{ post :create, params: params }.to change(Cnab, :count).by(3)
    end
  end
end
