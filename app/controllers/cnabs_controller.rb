class CnabsController < ApplicationController

  def create
    @cnab_data ||= parse
    if Cnabs::Save.new(cnab_data: @cnab_data.set_cnab_data!).cnab_data_save!
      render json: { message: 'Cnab salvo com sucesso' }, status: :created
    else
      render json: @cnab_data.errors, status: :unprocessable_entity
    end
  end

  private

  def parse
    Cnabs::Parse.new(file: params[:cnabFile])
  end
end


