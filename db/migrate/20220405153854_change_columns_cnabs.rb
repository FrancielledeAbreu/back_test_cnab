class ChangeColumnsCnabs < ActiveRecord::Migration[6.1]
  def change
    rename_column :cnabs, :value, :cnab_value
    rename_column :cnabs, :type, :cnab_type
  end
end
