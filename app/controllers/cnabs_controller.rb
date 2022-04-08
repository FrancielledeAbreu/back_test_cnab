class CnabsController < ApplicationController

  def index
    @cnabs = Cnab.all

    if @cnabs
      (render json: @cnabs)
    else
      (render json: { message: 'Cnabs não encontrados' }, status: 404)
    end
  end

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


