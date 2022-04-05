# == Schema Information
#
# Table name: cnabs
#
#  id          :bigint           not null, primary key
#  card        :string
#  cpf         :string
#  date        :datetime
#  hour        :datetime
#  store_name  :string
#  store_owner :string
#  type        :integer
#  value       :decimal(, )
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Cnab < ApplicationRecord

end
