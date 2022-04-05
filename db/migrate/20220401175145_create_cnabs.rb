class CreateCnabs < ActiveRecord::Migration[6.1]
  def change
    create_table :cnabs do |t|
      t.integer :type
      t.datetime :date
      t.decimal :value
      t.string :cpf
      t.string :card
      t.datetime :hour
      t.string :store_owner
      t.string :store_name

      t.timestamps
    end
  end
end
