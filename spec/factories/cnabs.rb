# == Schema Information
#
# Table name: cnabs
#
#  id          :bigint           not null, primary key
#  card        :string
#  cnab_type   :integer
#  cnab_value  :decimal(, )
#  cpf         :string
#  date        :datetime
#  hour        :datetime
#  store_name  :string
#  store_owner :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
FactoryBot.define do
  factory :cnab do
    card  { "4753****3153" }
    cnab_type  { 1 }
    cnab_value  { 100 }
    cpf  { "00837379154" }
    date  { "2021-08-22 16:25:01.000" }
    hour  { "2021-01-02 18:37:33.000" }
    store_name  { "LOJA JOÃO MACEDO" }
    store_owner  { "JOÃO MACEDO" }
  end
end