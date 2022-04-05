class CnabsController < ApplicationController
  def create
    @cnab_data ||= parse
    if saver.cnab_data_save!
      render json: { message: 'Cnab salvo com sucesso' }, status: :created
    else
      render json: saver.error_message, status: :unprocessable_entity
    end
  end

  private

  def parse
    Cnabs::Parse.new(file: params[:cnabFile])
  end

  def saver
    @saver ||= Cnabs::Save.new(cnab_data: @cnab_data.set_cnab_data!)
  end
end


