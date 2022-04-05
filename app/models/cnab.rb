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
class Cnab < ApplicationRecord
  enum cnab_type: Cnabs::Types::TYPES

  validates :cnab_type, :date, :cnab_value, :cpf, :card, :hour, :store_name, :store_owner, presence: true
end
