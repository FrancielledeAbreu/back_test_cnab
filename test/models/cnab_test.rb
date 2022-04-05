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
require "test_helper"

class CnabTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
