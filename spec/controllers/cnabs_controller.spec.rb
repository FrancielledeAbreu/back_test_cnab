require 'rails_helper'

RSpec.describe CnabsController, type: :controller do
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
