module Cnabs
  class Parse 
    attr_reader :cnab_data

    def initialize(file:)
      @file = file
    end

    def set_cnab_data!
      @cnab_data =
        File.open(@file.tempfile).map do |line|
          {
            type: line[0],
            date: time_to_string(line[1..8]),
            value: percent_value(line[9..18]),
            cpf: line[19..29],
            card: line[30..41],
            hour: time_to_string(line[42..47]),
            store_owner: line[48..61],
            store_name: line[62..80]
          }
        end
    end

    private

    def percent_value(price)
      (price.to_i / 100).to_i
    end

    def time_to_string(time)
      Time.at(time.to_i)
    end
  end
end