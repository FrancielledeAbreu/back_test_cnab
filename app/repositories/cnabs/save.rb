module Cnabs
  class Save 
    def initialize(cnab_data:)
      @cnab_data = cnab_data
    end

    def cnab_data_save!
      ActiveRecord::Base.transaction do
        @cnab_data.map do |cnab|
          cnab = Cnab.new(
            cnab_type: insert_type(cnab[:type]),
            date: cnab[:date],
            cnab_value: cnab[:value],
            cpf: cnab[:cpf],
            card: cnab[:card],
            hour: cnab[:hour],
            store_name: cnab[:store_name],
            store_owner: cnab[:store_owner]
          )

          cnab if cnab.save!
        end
      end
    end

    private

    def insert_type(type)
      case type
      when '1' then :debito
      when '2' then :boleto
      when '3' then :financiamento
      when '4' then :credito
      when '5' then :recebimento_emprestimo
      when '6' then :vendas
      when '7' then :recebimento_TED
      when '8' then :recebimento_DOC
      when '9' then :aluguel
      else :invalido
      end
    end
  end
end